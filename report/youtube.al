report 50211 
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\report\youtube.RDL';
    
    dataset
    {
        dataitem(Customer;Customer)
        {
            DataItemTableView = sorting()
            RequestFilterFields = "No.";
            column(Cust_No_;"No.")
            {
                
            }
            column(Cust_Phone_No_;"Phone No.")
            {
                
            }
            column(Cust_Address;Address)
            {
                
            }
            column(cust_E_Mail;"E-Mail")
            {
                
            }

            dataitem("Cust. Ledger Entry";"Cust. Ledger Entry")
            {
                DataItemTableView = sorting ("Entry No.");
                DataItemLinkReference = Customer ; 
                DataItemLink = "Customer No." = field("No.");
                
                column(custLedEntry_No_;"Entry No.")
                {
                    IncludeCaption = true;
                    
                }
                column(ledgerCustomer_No_;"Customer No.")
                {
                    
                }
                column(ledgerPosting_Date;"Posting Date")
                {
                    
                }
                column(Document_Type;"Document Type")
                {
                    
                }
                column(Document_No_;"Document No.")
                {
                    
                }
                column(Description;Description)
                {
                    
                    
                }
                column(Currency_Code;"Currency Code")
                {
                    
                }
                column(Amount;Amount)
                {
                    
                }
                column(Original_Amt___LCY_;"Original Amt. (LCY)")
                {
                    
                }
                column(Remaining_Amt___LCY_;"Remaining Amt. (LCY)")
                {
                    
                }
                
                dataitem("Detailed Cust. Ledg. Entry";"Detailed Cust. Ledg. Entry")
                {
                    DataItemTableView = sorting("Entry No.");
                    DataItemLinkReference = "Cust. Ledger Entry";
                    DataItemLink = "Customer No." = field("Customer No."); 
                    column( )
                    {
                        
                    }
                }
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; SourceExpression)
                    {
                        ApplicationArea = All;
                        
                    }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
}