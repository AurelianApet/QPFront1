﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text.RegularExpressions;

using DataAccess;
using Ronaldo.common;

public partial class ajax_lottery_GetBetAssistData : Ronaldo.uibase.AjaxPageBase
{
    protected override void Page_Load(object sender, EventArgs e)
    {
        base.Page_Load(sender, e);

        Response.Clear();
        Response.ContentType = "text/html";
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        string strFormat = "{{\"Ok\":{0}, \"Data\":{{\"fav\":[{1}], \"stat\":[{2}]}}}}";

        string strStatData = "";
        string strFavData = "";

        string strResult = "";
        try
        {
            int nLottery = Convert.ToInt32(Request.Params["sel"]);

            if (nLottery == Constants.GAMETYPE_RACE)
                strStatData = "\"0;13;55;0;冠军形态;大;802\",\"3;25;64;0;冠军形态;小;802\",\"3;13;61;1;冠军形态;奇;802\",\"0;16;58;0;冠军形态;偶;802\",\"3;17;68;0;冠军形态;质;802\",\"0;14;51;0;冠军形态;合;802\",\"0;12;66;0;亚军形态;大;802\",\"2;19;53;0;亚军形态;小;802\",\"1;20;64;0;亚军形态;奇;802\",\"0;15;55;5;亚军形态;偶;802\",\"1;14;58;0;亚军形态;质;802\",\"0;14;61;4;亚军形态;合;802\",\"0;13;61;2;季军形态;大;802\",\"1;19;58;0;季军形态;小;802\",\"3;17;62;2;季军形态;奇;802\",\"0;15;57;0;季军形态;偶;802\",\"2;16;65;0;季军形态;质;802\",\"0;15;54;0;季军形态;合;802\",\"1;13;58;2;第四名形态;大;802\",\"0;22;61;1;第四名形态;小;802\",\"3;17;53;0;第四名形态;奇;802\",\"0;15;66;0;第四名形态;偶;802\",\"3;16;48;4;第四名形态;质;802\",\"0;17;71;0;第四名形态;合;802\",\"1;15;65;0;第五名形态;大;802\",\"0;20;54;2;第五名形态;小;802\",\"0;14;53;0;第五名形态;奇;802\",\"2;13;66;0;第五名形态;偶;802\",\"0;13;57;2;第五名形态;质;802\",\"1;18;62;0;第五名形态;合;802\",\"0;12;69;2;第六名形态;大;802\",\"1;18;50;0;第六名形态;小;802\",\"0;15;70;0;第六名形态;奇;802\",\"3;15;49;1;第六名形态;偶;802\",\"0;14;52;0;第六名形态;质;802\",\"3;16;67;1;第六名形态;合;802\",\"2;12;52;0;第七名形态;大;802\",\"0;17;67;0;第七名形态;小;802\",\"0;13;59;0;第七名形态;奇;802\",\"4;16;60;1;第七名形态;偶;802\",\"0;15;61;0;第七名形态;质;802\",\"3;21;58;0;第七名形态;合;802\",\"0;13;66;1;第八名形态;大;802\",\"1;27;53;3;第八名形态;小;802\",\"0;18;63;0;第八名形态;奇;802\",\"3;15;56;0;第八名形态;偶;802\",\"1;16;63;3;第八名形态;质;802\",\"0;15;56;1;第八名形态;合;802\",\"1;13;50;0;第九名形态;大;802\",\"0;18;69;2;第九名形态;小;802\",\"4;15;60;0;第九名形态;奇;802\",\"0;14;59;0;第九名形态;偶;802\",\"0;13;65;3;第九名形态;质;802\",\"1;15;54;0;第九名形态;合;802\",\"3;15;53;3;第十名形态;大;802\",\"0;17;66;0;第十名形态;小;802\",\"0;15;50;1;第十名形态;奇;802\",\"1;21;69;1;第十名形态;偶;802\",\"0;15;58;0;第十名形态;质;802\",\"3;17;61;2;第十名形态;合;802\",\"2;36;34;6;冠军形态;0路;802\",\"1;21;44;5;冠军形态;1路;802\",\"0;26;41;2;冠军形态;2路;802\",\"2;25;42;0;亚军形态;0路;802\",\"0;24;48;0;亚军形态;1路;802\",\"11;29;29;5;亚军形态;2路;802\",\"0;26;36;3;季军形态;0路;802\",\"1;20;48;1;季军形态;1路;802\",\"2;25;35;11;季军形态;2路;802\",\"1;27;40;2;第四名形态;0路;802\",\"0;18;46;1;第四名形态;1路;802\",\"9;25;33;1;第四名形态;2路;802\",\"0;30;34;0;第五名形态;0路;802\",\"2;21;51;1;第五名形态;1路;802\",\"3;26;34;2;第五名形态;2路;802\",\"3;35;41;4;第六名形态;0路;802\",\"0;27;53;0;第六名形态;1路;802\",\"2;25;25;2;第六名形态;2路;802\",\"1;23;37;1;第七名形态;0路;802\",\"0;21;49;1;第七名形态;1路;802\",\"4;32;33;1;第七名形态;2路;802\",\"0;27;29;1;第八名形态;0路;802\",\"3;21;51;0;第八名形态;1路;802\",\"1;32;39;8;第八名形态;2路;802\",\"6;32;33;4;第九名形态;0路;802\",\"3;22;43;1;第九名形态;1路;802\",\"0;28;43;0;第九名形态;2路;802\",\"4;30;31;3;第十名形态;0路;802\",\"2;18;43;3;第十名形态;1路;802\",\"0;29;45;0;第十名形态;2路;802\",\"7;73;15;2;冠军走势;01;801\",\"4;86;14;1;冠军走势;02;801\",\"13;77;16;3;冠军走势;03;801\",\"14;88;8;25;冠军走势;04;801\",\"3;117;11;1;冠军走势;05;801\",\"2;103;11;6;冠军走势;06;801\",\"18;80;12;19;冠军走势;07;801\",\"0;90;16;20;冠军走势;08;801\",\"12;74;7;44;冠军走势;09;801\",\"1;81;9;14;冠军走势;10;801\",\"4;97;8;13;亚军走势;01;801\",\"17;93;7;13;亚军走势;02;801\",\"2;79;16;0;亚军走势;03;801\",\"8;95;9;3;亚军走势;04;801\",\"11;86;13;12;亚军走势;05;801\",\"6;108;13;15;亚军走势;06;801\",\"1;122;14;14;亚军走势;07;801\",\"34;86;9;2;亚军走势;08;801\",\"5;96;13;1;亚军走势;09;801\",\"0;82;17;13;亚军走势;10;801\",\"12;92;10;7;季军走势;01;801\",\"2;89;13;13;季军走势;02;801\",\"8;93;11;9;季军走势;03;801\",\"1;83;9;25;季军走势;04;801\",\"31;79;15;2;季军走势;05;801\",\"0;103;15;3;季军走势;06;801\",\"3;76;16;2;季军走势;07;801\",\"14;85;7;2;季军走势;08;801\",\"19;72;10;8;季军走势;09;801\",\"5;92;13;5;季军走势;10;801\",\"3;82;9;4;第四名走势;01;801\",\"9;82;10;1;第四名走势;02;801\",\"29;91;13;9;第四名走势;03;801\",\"0;89;18;1;第四名走势;04;801\",\"22;79;11;5;第四名走势;05;801\",\"1;83;12;10;第四名走势;06;801\",\"19;84;5;29;第四名走势;07;801\",\"13;101;12;4;第四名走势;08;801\",\"4;89;15;1;第四名走势;09;801\",\"10;95;14;6;第四名走势;10;801\",\"31;92;11;7;第五名走势;01;801\",\"3;87;15;10;第五名走势;02;801\",\"0;101;10;11;第五名走势;03;801\",\"4;90;12;4;第五名走势;04;801\",\"6;110;6;8;第五名走势;05;801\",\"5;78;13;5;第五名走势;06;801\",\"27;83;15;14;第五名走势;07;801\",\"7;77;13;11;第五名走势;08;801\",\"1;82;11;14;第五名走势;09;801\",\"2;84;13;5;第五名走势;10;801\",\"1;78;17;4;第六名走势;01;801\",\"40;79;3;38;第六名走势;02;801\",\"16;77;6;30;第六名走势;03;801\",\"18;97;13;9;第六名走势;04;801\",\"2;82;11;4;第六名走势;05;801\",\"3;80;14;10;第六名走势;06;801\",\"0;101;15;3;第六名走势;07;801\",\"5;89;11;24;第六名走势;08;801\",\"8;92;21;1;第六名走势;09;801\",\"12;98;8;9;第六名走势;10;801\",\"0;89;16;4;第七名走势;01;801\",\"27;76;15;7;第七名走势;02;801\",\"1;72;9;5;第七名走势;03;801\",\"11;92;15;1;第七名走势;04;801\",\"8;86;12;5;第七名走势;05;801\",\"10;93;15;6;第七名走势;06;801\",\"2;80;9;9;第七名走势;07;801\",\"4;80;6;1;第七名走势;08;801\",\"3;89;13;11;第七名走势;09;801\",\"37;82;9;7;第七名走势;10;801\",\"13;73;9;7;第八名走势;01;801\",\"18;86;10;18;第八名走势;02;801\",\"5;84;13;3;第八名走势;03;801\",\"22;94;9;10;第八名走势;04;801\",\"1;85;12;8;第八名走势;05;801\",\"16;91;6;11;第八名走势;06;801\",\"7;81;19;0;第八名走势;07;801\",\"12;98;17;2;第八名走势;08;801\",\"0;82;10;1;第八名走势;09;801\",\"3;93;14;0;第八名走势;10;801\",\"17;94;15;1;第九名走势;01;801\",\"0;87;15;6;第九名走势;02;801\",\"6;80;13;4;第九名走势;03;801\",\"3;92;11;17;第九名走势;04;801\",\"4;99;15;11;第九名走势;05;801\",\"30;75;10;0;第九名走势;06;801\",\"5;99;7;8;第九名走势;07;801\",\"1;103;13;0;第九名走势;08;801\",\"18;96;10;7;第九名走势;09;801\",\"9;79;10;5;第九名走势;10;801\",\"2;87;9;6;第十名走势;01;801\",\"1;67;17;3;第十名走势;02;801\",\"4;77;12;31;第十名走势;03;801\",\"6;76;15;8;第十名走势;04;801\",\"0;81;13;11;第十名走势;05;801\",\"8;82;10;30;第十名走势;06;801\",\"32;84;7;4;第十名走势;07;801\",\"3;82;15;6;第十名走势;08;801\",\"22;88;9;18;第十名走势;09;801\",\"7;97;12;5;第十名走势;10;801\"";
            else if (nLottery == Constants.GAMETYPE_LADDER)
                strStatData = "";

            DataSet dsFavs = DBConn.RunStoreProcedure(Constants.SP_GETFAVS, new string[] { "@user_id", "@lottery" }, new object[] { AuthUser.ID, nLottery });
            string strLargeComma = "";
            for (int i = 0; i < DataSetUtil.RowCount(dsFavs); i++)
            {
                string[] strListParams = DataSetUtil.RowStringValue(dsFavs, "list", i).Split(';');
                string strContent = "[";
                string strComma = "";

                for (int k = 0; k < strListParams.Length; k++)
                {
                    strContent = strContent + strComma + "{";
                    string[] strOneParams = strListParams[k].Split('-');
                    strContent += "\\\"ItemTimes\\\":" + strOneParams[1] + ",\\\"SelNums\\\":\\\"" + strOneParams[4] + "\\\",\\\"RuleId\\\":" + strOneParams[3] + ",\\\"BetNum\\\":" + strOneParams[0] + ",\\\"PriceMode\\\":" + strOneParams[2];
                    strContent += "}";
                    strComma = ",";
                }
                strContent += "]";

                strFavData += strLargeComma + "{";
                strFavData += "\"LotteryCode\": " + DataSetUtil.RowIntValue(dsFavs, "lotteryId", i).ToString() + ", ";
                strFavData += "\"Id\": " + DataSetUtil.RowLongValue(dsFavs, "id", i).ToString() + ", ";
                strFavData += "\"CreateTime\": \"\\/Date(1466288351345)\\/\", ";
                strFavData += "\"FavName\": \"" + DataSetUtil.RowStringValue(dsFavs, "title", i) + "\", ";
                strFavData += "\"CreateTimeISO\": \"" + DataSetUtil.RowDateTimeValue(dsFavs, "regdate", i).Split(' ')[0] + "\", ";
                strFavData += "\"UserId\": " + DataSetUtil.RowLongValue(dsFavs, "user_id", i).ToString() + ", ";
                strFavData += "\"FavContent\": \"" + strContent + "\", ";
                strFavData += "\"FavTotalPrice\": " + string.Format("{0:F2}", DataSetUtil.RowDoubleValue(dsFavs, "totalPrice", i));
                strFavData += "}";
                strLargeComma = ",";
            }
            strFavData = string.IsNullOrEmpty(strFavData) ? "" : strFavData;
            strResult = string.Format(strFormat, 1, strFavData, strStatData);
        }
        catch (Exception ex)
        {
            Response.Write(string.Format("{{\"Ok\":{0}, \"Data\":\"{1}\"}}", 0, ex.Message));
            Response.End();
        }
        Response.Write(strResult);
        Response.End();
    }
}
