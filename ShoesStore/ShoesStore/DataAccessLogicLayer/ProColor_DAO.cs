﻿using System;
using ShoesStore.Interfaces;

namespace ShoesStore.DataAccessLogicLayer
{
    public class ProColor_DAO : Table_DAO<ProColor>, IProColor
    {
        public override void SetActive(ProColor obj)
        {
            throw new System.NotImplementedException();
        }

        public override bool IsExist(ProColor obj)
        {
            throw new NotImplementedException();
        }
    }
}