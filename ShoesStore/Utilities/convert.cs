using System;
using System.Data;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using Logger;

namespace Utilities
{
    public class convert
    {
        public static DateTime nullDate = new DateTime(1900, 1, 1);//ngày 1/1/1900
        public static string formatToDate(string strDate)
        {
            try
            {
                DateTime mydate = DateTime.Parse(strDate);
                return mydate.ToShortDateString();
            }
            catch
            {
                return strDate;
            }
        }
        public static string convertToDate(string sNgay)
        {
            try
            {
                string[] tmp = sNgay.Split('/');
                string ngay = tmp[0] + "/" + tmp[1] + "/" + tmp[2];                               
                DateTime ngayConvert = DateTime.Parse(ngay);              
                return ngayConvert.ToString("MM/dd/yyyy");
            }
            catch (Exception ex)
            {
                Log.info("convert.convertToDate: " + ex.Message);
                return "";
            }
        }
        public static string convertToDateVN(string sNgay)
        {
            try
            {
                string[] tmp = sNgay.Split('/');
                string ngay = tmp[1] + "/" + tmp[0] + "/" + tmp[2];
                DateTime ngayConvert = DateTime.Parse(ngay);
                return ngayConvert.ToString("dd/MM/yyyy");
            }
            catch (Exception ex)
            {
                Log.info("convert.convertToDateVN: " + ex.Message);
                return "";
            }
        }       
        public static bool isDate(string strDate)
        {
            try
            {
                DateTime mydate = DateTime.Parse(strDate);               
                return true;
            }
            catch
            {
                return false;
            }
        }       
        public static decimal formatToNumber(string strNumber)
        {
            try
            {
                decimal myNumber = decimal.Parse(strNumber);
                return myNumber;
            }
            catch
            {
                return 0;
            }
        }
        public static string fristDateOfMonth(string monthYear)
        {//monthYear là chuỗi tháng năm dạng (MM/yyyy)
         //trả về ngày dầu tháng 
            try
            {
                string[] tmp = monthYear.Split('/');
                string ngay = tmp[0] + "/" + "1" + "/" + tmp[1];
                DateTime ngayConvert = DateTime.Parse(ngay);
                return ngayConvert.ToString("MM/dd/yyyy");
            }
            catch (Exception ex)
            {
                Log.info("convert.fristDateOfMonth: " + ex.Message);
                return "";
            }
        }
        public static  bool isnullDate(DateTime pmyDate)
        {            
            if (pmyDate <= nullDate) return true;
            return false;
        }
        //
        public static decimal getDecimal(DataTable dtb, int rowIndex, string colName)
        {
            decimal ii;
            if (dtb.Rows[rowIndex].IsNull(colName))
            {
                ii = 0;
            }
            else
            {
                ii = decimal.Parse(dtb.Rows[rowIndex][colName].ToString());

            }
            return ii;
        }
        public static decimal getDecimal(object obj)
        {
            decimal ii;
            if (obj == null || string.IsNullOrEmpty(obj.ToString()))
            {
                //ii =decimal.MinValue;
                ii = 0;
            }
            else
            {
                try
                {
                    ii = decimal.Parse(obj.ToString());
                }
                catch
                {
                    //ii = decimal.MinValue;
                    ii = 0;
                }
            }
            return ii;
        }
        public static bool getBool(DataTable dtb, int rowIndex, string colName)
        {
            bool ii;
            if (dtb.Rows[rowIndex].IsNull(colName))
            {
                ii = false;
            }
            else
            {
                return bool.Parse(dtb.Rows[rowIndex][colName].ToString());
            }
            return ii;

        }
        public static bool getBool(object obj)
        {
            bool ii;
            if (obj == null || string.IsNullOrEmpty(obj.ToString()))
            {
                ii = false;
            }
            else
            {
                return bool.Parse(obj.ToString());
            }
            return ii;

        }
        public static int getInt(DataTable dtb, int rowIndex, string colName)
        {
            int ii;
            if (dtb.Rows[rowIndex].IsNull(colName))
            {
                ii = 0;
            }
            else
            {
                ii = int.Parse(dtb.Rows[rowIndex][colName].ToString());
            }
            return ii;

        }
        public static int getInt(object obj)
        {
            int ii;
            if (obj == null || string.IsNullOrEmpty(obj.ToString()))
            {
                //ii = int.MinValue;
                ii = 0;
            }
            else
            {
                try
                {
                    ii = int.Parse(obj.ToString());
                }
                catch
                {
                    //ii = int.MinValue;
                    ii = 0;
                }
            }
            return ii;
        }
        public static string getString(object obj)
        {
            string str = "";
            if (obj == null || string.IsNullOrEmpty(obj.ToString()))
            {
                str = "";
            }
            else
            {
                return obj.ToString().Trim();
            }
            return str;
        }
        public static string getString(DataTable dtb, int rowIndex, string colName)
        {
            string str = "";
            if (dtb.Rows[rowIndex].IsNull(colName))
            {
                str = "";
            }
            else
            {
                return dtb.Rows[rowIndex][colName].ToString().Trim();
            }
            return str;
        }
        public static DateTime getDateTime(DataTable dtb, int rowIndex, string colName)
        {
            DateTime ii;
            if (dtb.Rows[rowIndex].IsNull(colName))
            {
                ii = convert.nullDate;
            }
            else
            {
                ii = DateTime.Parse(dtb.Rows[rowIndex][colName].ToString());
            }
            return ii;
        }
        public static DateTime getDateTime(object sDate)
        {
            DateTime ii;
            if (sDate == DBNull.Value)
                ii = convert.nullDate;
            else
            {
                try
                {
                    ii = DateTime.Parse(sDate.ToString());
                    ii = new DateTime(ii.Year, ii.Month, ii.Day);
                }
                catch
                {
                    ii = convert.nullDate;
                }
            }
            return ii;
        }
        private static int[] dateArrayOfVN(string dateOfVN)
        {//trả về 1 mảng các thông tin về ngày/tháng/năm của chuỗi truyền vào
        // 
            try
            {
                string[] tmp = dateOfVN.Split('/');
                if (tmp.Length!=3) return null;
                else
                {
                    int[] result = new int[3];                  
                    for (int i = 0; i < 3;i++)
                    {
                        tmp[i] = tmp[i].Trim();
                        if (tmp[i].ToString() == "") return null;
                        else
                        {
                            result[i] = convert.getInt(tmp[i].ToString());                                                       
                        }                            
                    }
                    return result;
                }
            }
            catch
            {
                return null;
            }
        }
        public static DateTime convertDateFromdateOfVN(string dateOfVN)
        {
            try
            {
                int[] tmp = convert.dateArrayOfVN(dateOfVN);

                if (tmp == null) return convert.nullDate;
                else
                {
                    try
                    {
                        return new DateTime(tmp[2], tmp[1], tmp[0]);
                    }
                    catch
                    {
                        return convert.nullDate;
                    }
                }
            }
            catch
            {
                return convert.nullDate;
            }
        }
        private static int[] dateArrayOfUSA(string dateOfUSA)
        {//trả về 1 mảng các thông tin về ngày/tháng/năm của chuỗi truyền vào
            // 
            try
            {
                string[] tmp = dateOfUSA.Split('/');
                if (tmp.Length != 3) return null;
                else
                {
                    int[] result = new int[3];
                    for (int i = 0; i < 3; i++)
                    {
                        tmp[i] = tmp[i].Trim();
                        if (tmp[i].ToString() == "") return null;
                        else
                        {
                            result[i] = convert.getInt(tmp[i].ToString());
                        }
                    }
                    return result;
                }
            }
            catch
            {
                return null;
            }
        }
        public static DateTime convertDateFromdateOfUSA(string dateOfUSA)
        {
            try
            {
                int[] tmp = convert.dateArrayOfUSA(dateOfUSA);

                if (tmp == null) return convert.nullDate;
                else
                {
                    try
                    {
                        return new DateTime(tmp[2], tmp[0],tmp[1]);
                    }
                    catch
                    {
                        return convert.nullDate;
                    }
                }
            }
            catch
            {
                return convert.nullDate;
            }
        }
        public static int GetMonth(DateTime date1, DateTime date2)
        {
            try
            {
                if (date1 > date2)
                {
                    DateTime tmp = date1;
                    date1 = date2;
                    date2 = tmp;
                }
                int year = date2.Year - date1.Year;
                int month = date2.Month - date1.Month;
                return year * 12 + month;
            }
            catch (Exception ex)
            {
               
                return 0;
            }
        }
    }
}
