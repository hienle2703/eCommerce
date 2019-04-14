﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace ShoesStore.MyExtensions
{
    public static class StringExtension
    {
        public static string UnSign(this string s)
        {
            Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
            string temp = s.Normalize(NormalizationForm.FormD);
            return regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        }
        public static bool ContainsEx(this string source, string value/*, StringComparison comparison*/)
        {
            if (string.IsNullOrWhiteSpace(source))
            {
                return false;
            }

            return source.UnSign().IndexOf(value, StringComparison.OrdinalIgnoreCase) >= 0;
        }
    }
}