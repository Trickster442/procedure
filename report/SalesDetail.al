report 50141 "Sales Details"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\report\SalesDetail.RDL';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }

            column(Sell_to_Address; "Sell-to Address")
            {

            }
            column(Sell_to_Contact; "Sell-to Contact")
            {

            }
            column(Salesperson_Code; "Salesperson Code")
            {

            }
        }
        
    }
    

}