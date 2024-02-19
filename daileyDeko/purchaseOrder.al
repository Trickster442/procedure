report 50121 "Purchase Order Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\daileyDeko\purchaseOrder.RDL';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = where(Status = filter(1));
            RequestFilterFields = "Buy-from Vendor Name";


            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }

            column(Pay_to_Contact; "Pay-to Contact")
            {

            }
            column(Document_Date; "Document Date")
            {

            }

            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            {

            }

            column(Status; Status)
            {

            }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLinkReference = "Purchase Header";
                DataItemLink = "Document No." = field("No.");
                column(Type; Type)
                {

                }

                column(Description; Description)
                {

                }
                column(Location_Code; "Location Code")
                {

                }

                column(Quantity; Quantity)
                {

                }

                column(Unit_of_Measure_Code; "Unit of Measure Code")
                {

                }
            }
        }
    }
}