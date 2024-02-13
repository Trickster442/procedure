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
            RequestFilterFields = "No.";
            DataItemTableView = sorting("Sell-to Customer No.");

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
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLinkReference = "Sales Header";
                DataItemLink = "Sell-to Customer No." = field("Sell-to Customer No.");
                column(Sell_to_Customer_No_; "Sell-to Customer No.")
                {

                }
                column(Amount; Amount)
                {

                }
            }
        }



    }


}