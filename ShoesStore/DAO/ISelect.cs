﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    interface ISelect<T>
    {
        List<T> GetAll();
    }
}
