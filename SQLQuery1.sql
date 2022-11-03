create proc [dbo].[SP_AuthoLogin]
@Username nvarchar(20),
@Password nvarchar(20)
as
begin
    if exists (select * from dangnhap where tendangnhap = @Username and matKhau = @Password and IDper = 1)
        select 1 as code
    else if exists (select * from dangnhap where tendangnhap = @Username and matKhau = @Password and IDper = 0)
        select 0 as code
    else if exists(select * from dangnhap where tendangnhap = @Username and matKhau != @Password) 
        select 2 as code
    else select 3 as code
end