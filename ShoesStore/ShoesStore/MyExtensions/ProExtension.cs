﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;
using ShoesStore.DataAccessLogicLayer;

namespace ShoesStore.MyExtensions
{
    public static class ProExtension
    {
        public static List<Pro> FilterByName(this List<Pro> listPro, string name)
        {
            return listPro.Where(m => m.ProName == name).ToList();
        }

        public static List<T> Filter<T>(this List<T> repo,Func<T,bool> myFunc) where T : class
        {
            return repo.Where(myFunc).ToList();
        }
    }
}