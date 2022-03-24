﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace BookingProject.App_Code
{
    public class DAL
    {

            readonly OleDbConnection myConnection;
            const string FILE_NAME = "Register.accdb";


            public DAL()
            {
                string location = HttpContext.Current.Server.MapPath("~/App_Data/" + FILE_NAME);
                string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; data source=" + location;
                myConnection = new OleDbConnection(connectionString);
            }

            //פעולה המפעילה את השאילתא שנשלחת על בסיס הנתונים
            public DataSet excuteQuery(String sql)
            {
                DataSet dataset = new DataSet();
                try
                {
                    myConnection.Open();
                    string sSql = sql;
                    OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                    OleDbDataAdapter adapter = new OleDbDataAdapter
                    {
                        SelectCommand = myCmd
                    };
                    adapter.Fill(dataset);
                }
                catch (Exception e)
                {
                    throw e;

                }
                finally
                {
                    myConnection.Close();
                }
                return dataset;
            }

        }


    
}