table 50560 "Doctor Table subform"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"S.N"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(2; Name; Blob)
        {
            DataClassification = ToBeClassified;
        }

        field(3; Time; DateTime)
        {

        }
    }
    
    keys
    {
        key(Pk; "S.N")
        {
            Clustered = true;
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