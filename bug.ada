```ada
function Add_One (X : Integer) return Integer is
begin
   return X + 1;
end Add_One;

procedure Main is
   Result : Integer;
begin
   Result := Add_One(5);
   Put_Line("Result: " & Integer'Image(Result));
end Main;
```