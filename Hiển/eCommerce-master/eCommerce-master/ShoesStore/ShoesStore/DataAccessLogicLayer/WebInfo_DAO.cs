﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using ShoesStore.Interfaces;

namespace ShoesStore.DataAccessLogicLayer
{
    public class WebInfo_DAO : Table_DAO<WebInfo>,IWebInfo
    {
       
        public void SetActive()
        {
            throw new NotImplementedException();
        }

        public List<WebInfo> Filter(WebInfo obj)
        {
            throw new NotImplementedException();
        }

        public List<WebSlide> GetSlides()
        {
            throw new NotImplementedException();
        }

        public WebInfo GetById(int id)
        {
            return DataProvider.Instance.WebInfo.Find(id);
        }

        public override void SetActive(WebInfo obj)
        {
            throw new NotImplementedException();
        }

        public override bool IsExist(WebInfo obj)
        {
            throw new NotImplementedException();
        }
    }
}