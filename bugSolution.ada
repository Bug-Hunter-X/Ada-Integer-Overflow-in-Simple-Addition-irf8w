```ada
function Add_One (X : Integer) return Integer is
begin
   if X >= Integer'Last - 1 then
      raise Constraint_Error;
end if;
   return X + 1;
end Add_One;

procedure Main is
   Result : Integer;
begin
   begin
      Result := Add_One(Integer'Last - 1);  -- Test case near the limit
      Put_Line("Result: " & Integer'Image(Result));
   exception
      when Constraint_Error =>
         Put_Line("Integer overflow occurred!");
   end;
end Main;
```