﻿using System;
using ShoesStore.DataAccessLogicLayer;

namespace ShoesStore.BusinessLogicLayer
{
    public class Pro_BUS : Table_BUS<Pro, Pro_DAO>
    {
        public override bool IsExist(Pro obj)
        {
            throw new NotImplementedException();
        }

        public override void SetActive(Pro obj)
        {
            throw new NotImplementedException();
        }
    }
}