--Create every combination of "rounded" RGB colors (rounded to nearest 5).

TRUNCATE TABLE tblColors

Declare @R int, @G int, @B int, @Hex varchar(20)
Declare @ID int = 1
Declare @Step int = 5

Set @R = 0
WHILE @R <= 255
BEGIN
	Set @G = 0
	WHILE @G <= 255
	BEGIN
		Set @B = 0
		WHILE @B <= 255
		BEGIN
			-- Convert RGB to Hex
			Set @Hex = CONVERT(VARCHAR(11), CONVERT(BINARY(1), @R, 0) + CONVERT(BINARY(1), @G, 0)  + CONVERT(BINARY(1), @B, 0), 1)
			Set @Hex = REPLACE(@Hex, '0x', '')

			INSERT INTO tblColors (Red, Green, Blue, Hex) Values (@R, @G, @B, @Hex)
			Set @ID = @ID + 1

			SET @B = @B + @Step
		END

		SET @G = @G + @Step
	END

	SET @R = @R + @Step
END