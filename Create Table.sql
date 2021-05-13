--Create the Colors Table
CREATE TABLE [dbo].[tblColors](
	[ID] [int] NOT NULL IDENTITY,
	[Red] [int] NULL,
	[Green] [int] NULL,
	[Blue] [int] NULL,
	[Hex] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblColorOptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
