
-- This function removes non alpha chars from a VARCHAR column. 
-- This is done so text does not mess up excel when exported, with return chars. 

Drop Function [dbo].[RemoveNonAlphaCharacters] ; 

Create Function [dbo].[RemoveNonAlphaCharacters](@Temp VarChar(1000))
Returns VarChar(1000)
AS
Begin

    Declare @KeepValues as varchar(50)
    Set @KeepValues = '%[^a-zA-Z0-9 .,]%'
    While PatIndex(@KeepValues, @Temp) > 0
        Set @Temp = Stuff(@Temp, PatIndex(@KeepValues, @Temp), 1, '')

    Return @Temp
End ;
