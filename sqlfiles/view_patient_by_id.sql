USE [ashu]
GO

/****** Object:  StoredProcedure [dbo].[view_Id]    Script Date: 19-10-2019 14:41:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[view_Id]
(@patient_Id int)
as 
begin
select * from patient
where 
patient_Id=@patient_Id
end
GO


