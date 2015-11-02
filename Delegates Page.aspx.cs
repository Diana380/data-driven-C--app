using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int intmaledelegates = 0;
            //setting counter for the loop
   for (int i = 0; i < GridView1.Rows.Count; i++)

    if (GridView1.Rows[i].Cells[6].Text.Contains('M'))
        //setting cndition: if the cell in a row contains letter M
            {

intmaledelegates = intmaledelegates + 1; 
        //counter will add 1 to the counter total if the condition is true
GridView1.Rows[i].BackColor = System.Drawing.Color.LightGray;
        //this changes the color of the row where the condition is true
}


Label1.Text = Convert.ToString(intmaledelegates);
            //Label1 will show counter total
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int intfemdelegates = 0;
            //setting counter
foreach(GridViewRow oItem in GridView1.Rows) {
    if (oItem.Cells[6].Text.Contains('F'))
{
intfemdelegates = intfemdelegates + 1;
        //  adding 1 to the counter if condition is true
oItem.BackColor = System.Drawing.Color.Lavender;
        //changing color of row where condition is true
}

Label2.Text = Convert.ToString(intfemdelegates);
    //Label 2 will show total display

}
        }
    }
}