using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace DataAccess.Abstract
{
    public interface IProductDal:IEntityRepository<Product>
    {
       List<Product> GetAll(Expression<Func<Product, bool>> filter = null);
       void Add(Product product);
       void Update(Product product);
       void Delete(Product product);
       
    } 
}
