﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cellar.Data.Models
{
    public class Company : ICompany
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Number { get; set; }

        public string Commercial { get; set; }
    }
}