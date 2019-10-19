USE [ashu]
GO

/****** Object:  StoredProcedure [dbo].[view_patient]    Script Date: 19-10-2019 14:40:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[view_patient] 
(@patient_Id int )
as 
begin
if(@patient_Id=0)
begin
select * from patient
end 
else 
begin
select * from patient
where 
patient_Id=@patient_Id
end
end
GO


