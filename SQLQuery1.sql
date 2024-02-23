


use [ShopDb]

drop table [dbo].[Colors]
drop table [dbo].[Sizes]
select GETDATE()
select GETUTCDATE()



create table [dbo].[Sizes]
(
[Id] int primary key identity(1,1),
[Name] nvarchar(100) not null,
[SmallName] varchar(10) not null,
[CreatedAt] datetime not null default GETDATE(),
[CreatedBy] int not null,
[LastModifiedAt] datetime,
[LastModifiedBy] int,
[DeletedAt] datetime,
[DeletedBy] int
)

alter table [dbo].[Sizes]
drop column [DeletedAt] ,
[DeletedBy] 

create table [dbo].[Colors]
(
[Id] int identity(1,1), 
[Name] nvarchar(100) not null,
[HexCode] varchar(9),
[CreatedAt] datetime not null,
[CreatedBy] int not null,
[LastModifiedAt] datetime,
[LastModifiedBy] int,
[DeletedAt] datetime,
[DeletedBy] int
)

create table [dbo].[Brands]
(
  [Id] int primary key identity(1,1), 
  [Name] nvarchar(100) not null,
  [CreatedAt] datetime not null default getdate(),
  [CreatedBy] int not null,
  [LastModifiedAt] datetime,
  [LastModifiedBy] int,
  [DeletedAt] datetime,
  [DeletedBy] int
)

create table [dbo].[Products]
(
   [Id] int primary key identity(1,1),
   [Name] nvarchar(200) not null,
   [Slug] varchar(200) not null,
   [BrandId] int not null,
   [CreatedAt] datetime not null default getdate(),
   [CreatedBy] int not null,
   [LastModifiedAt] datetime,
   [LastModifiedBy] int,
   [DeletedAt] datetime,
   [DeletedBy] int
)

create table [Categories]
(
[Id] int primary key identity(1,1),
[ParentId] int,
[Name] nvarchar(100),
[CreatedAt] datetime,
[CreatedBy] int,
[LastModifiedAt] datetime,
[LastModifiedBy] int,
[DeletedAt] datetime default getdate(),
[DeletedBy] int
)

create table SpecificationValues
(
[SpecificationId] int primary key identity(1,1),
[ProductId] int,
[Value] nvarchar(100) 
)

create table ProductImages
(
[Id] int primary key identity(1,1),
[Name] nvarchar(100),
[IsMain] bit,
[ProductId] int
)

create table Specifications
(
[Id] int primary key identity(1,1),
[Name] nvarchar(100),
[CreatedAt] datetime not null default getdate(),
[CreatedBy] int not null,
[LastModifiedAt] datetime,
[LastModifiedBy] int,
[DeletedAt] datetime,
[DeletedBy] int
)


create table BlogPosts
(
[Id] int primary key identity(1,1),
[Title] nvarchar(100),
[CreatedAt] datetime not null default getdate(),
[CreatedBy] int not null,
[LastModifiedAt] datetime,
[LastModifiedBy] int,
[CategoryId] int,
[DeletedAt] datetime,
[DeletedBy] int,
[Slug] nvarchar(100),
[Body] nvarchar(100),
[ImagePath] nvarchar(100) not null,
[PublishedAt] datetime,
[PublishedBy] int,
)


