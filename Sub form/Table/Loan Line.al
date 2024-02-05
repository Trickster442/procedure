table 51890 "Loan Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Loan No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Loan Header Table";

        }
        field(2; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                trex: Record "Loan Header Table";
            begin
                trex.Get(trex."Loan Start", trex."Loan Ended");
                if (rec.Date < trex."Loan Start") and (rec.Date > trex."Loan Ended") then begin
                    Error('Inserted wrong');
                end
            end;


        }
        field(4; "Paid Amt"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Loan No")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;


}