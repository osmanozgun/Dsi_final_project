using Business.Abstract;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    public class CategoryManager : ICategoryService
    {
        ICategoryDal _categoryDal;
        
        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }


        public IDataResult<List<Category>> GetAll()
        {
            var categories = _categoryDal.GetAll()
                                         .OrderBy(c => c.CategoryId)  // ID'ye göre artan sıralama
                                         .ToList();
            return new SuccessDataResult<List<Category>>(categories);
        }


        public IDataResult<Category> GetById(int CategoryId)
        {
            return new SuccessDataResult<Category>(_categoryDal.Get(c => c.CategoryId == CategoryId));
        }
    }
}
