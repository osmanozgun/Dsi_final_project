using Business.Abstract;
using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Validation;
using Core.Utilities.Business;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.InMemory;
using Entities.Concrete;
using Entities.DTOs;
using FluentValidation;
using Microsoft.EntityFrameworkCore.Internal;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Net.Http.Headers;
using System.Text;
using ValidationException = FluentValidation.ValidationException;

namespace Business.Concrete
{
    public class ProductManager : IProductService
    {
        IProductDal _ProductDal;
        EfProductDal _efProductDal;
        ICategoryService _categoryService;

        public ProductManager(IProductDal productDal, CategoryManager categoryManager)
        {
            _ProductDal = productDal;
        }

        public ProductManager(EfProductDal efProductDal)
        {
            _efProductDal = efProductDal;
        }

        // busines code 
        // iş kuralları burda 
        //--------------------------------
        // validation ////// yapısal olarak uygun olup
        // olmadıgnı kontrol etmeye denir örneğin
        // şifre su olmalı su kadar karakter su şartları
        // sağlamalı gibi kurallar dogrulamaya girer

        [SecuredOperation("product.add,admin")]
        [ValidationAspect(typeof(ProductValidator))]
        public IResult Add(Product product)
        {
           IResult result = BusinessRules.Run(CheckCategoryofProductCount(product.CategoryId),
                PrimaryProductName(product.ProductName),CategoryLimit());

            


            if (result != null)
            {
                return result;
            }
            _ProductDal.Add(product);
            return new SuccessResult(Messages.ProductAdded);
        }

        public IDataResult<List<Product>> GetAll()
        {
            if(DateTime.Now.Hour==23)
            {
                return new ErrorDataResult<List<Product>>(Messages.MaintenanceTime);
            }
            return new SuccessDataResult<List<Product>>(_ProductDal.GetAll(),Messages.ProductsListed);
        }

        public IDataResult<List<Product>> GetAllByCategoryId(int id)
        {
            return new SuccessDataResult<List<Product>>(_ProductDal.GetAll(p => p.CategoryId == id));
        }

        public IDataResult<Product> GetById(int productid)
        {
            return new SuccessDataResult<Product>(_ProductDal.Get(p=>p.ProductId == productid));
        }

        public IDataResult<List<Product>> GetByUnitPrice(decimal min, decimal max)
        {
            return new SuccessDataResult<List<Product>>(_ProductDal.GetAll(p=>p.UnitPrice >= min && p.UnitPrice <= max));
        }

        

        public IDataResult<List<ProductDetailDto>> GetProductDetails()
        {
            if (DateTime.Now.Hour == 23)
            {
                return new ErrorDataResult<List<ProductDetailDto>>(Messages.MaintenanceTime);
            }
            return new SuccessDataResult<List<ProductDetailDto>>(_ProductDal.GetProductDetails());
        }
        [ValidationAspect(typeof(ProductValidator))]
        public IResult Update(Product product)
        {
            CheckCategoryofProductCount(product.CategoryId);
            return new SuccessDataResult<Product>(product);
        }
        private  IResult CheckCategoryofProductCount(int categoryId)
        {
            var sayi = _ProductDal.GetAll(p => p.CategoryId == categoryId).Count;

            if (sayi >= 10)
            {
                return new ErrorResult(Messages.CategoryCountError);
            }
            return new SuccessResult();
        }
        private IResult PrimaryProductName(string productname)
        {
            var result = _ProductDal.GetAll(p => p.ProductName == productname).Any();

            if (result)
            {
                return new ErrorResult(Messages.PrimaryProductNameError);
            }
            return new SuccessResult();
        }
        private IResult CategoryLimit()
        {
            var result = _categoryService.GetAll();

            if (result.Data.Count>15)
            {
                return new ErrorResult(Messages.CategoryLimitExceded);
            }
            return new SuccessResult();
        }



    }
}
