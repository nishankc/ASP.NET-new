using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string JQueryVer = "1.7.1";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/jquery-" + JQueryVer + ".min.js",
            DebugPath = "~/Scripts/jquery-" + JQueryVer + ".js",
            CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".min.js",
            CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".js",
            CdnSupportsSecureConnection = true,
            LoadSuccessExpression = "window.jQuery"
        });

    }

    

    protected void nameButton_Click(object sender, EventArgs e)
    {
        
        returnNameLabel.Text = "Hello, " + nameTB.Text;
    }

    protected void checkboxButton_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            checkboxResult.Text = "The Box is Checked";
        }
        else
        {
            checkboxResult.Text = "The Box is Un-Checked";
        }
    }

    protected void RadioButton_button_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            resultRadioButton.Text = "The radio button is checked";
        }
        else
        {
            resultRadioButton.Text = "The radio button is not checked";
        }
    }

    protected void radioListButton_Click(object sender, EventArgs e)
    {
        if(RadioButtonList1.SelectedItem != null)
        {
            listRadioLabel.Text = RadioButtonList1.SelectedItem.Text;
        }
    }



    protected void imagemap_click(object sender, ImageMapEventArgs e)
    {

        imagemaplabel.Text = "You selected " + e.PostBackValue;

    }

    protected void multilineButton_Click(object sender, EventArgs e)
    {
        string getTextBox = TextBox1.Text;
        char[] textBoxLength = getTextBox.ToCharArray();

        multilineLabel.Text = "The Number of Characters is: " + textBoxLength.Length;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        calanderLabel.Text = "The date you chose is: " + Calendar1.SelectedDate.ToShortDateString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dropdownLabel.Text = "Your favourite programming language is: " + DropDownList1.SelectedValue;
    }



    protected void checkBoxButtonList_Click(object sender, EventArgs e)
    {
       

        foreach(ListItem i in CheckBoxList1.Items)
        {
            if(i.Selected)
                checkBoxLabel.Text += "<br />Your choose: " + i.ToString();
            
        }
    }

    protected void EmailButton_Click(object sender, EventArgs e)
    {
        if (tb_email.CausesValidation)
        {
            emailLabel.Text = "InValid Email";
        }
        else
        {
            emailLabel.Text = "Valid Email";
        }
    }
}