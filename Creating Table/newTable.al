table 50149 practiseTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Pk; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Number1; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Number2; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Result_Mul; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Result_Div; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; Result_Add; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Result_Sub; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; "Pk")
        {
            Clustered = True;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}