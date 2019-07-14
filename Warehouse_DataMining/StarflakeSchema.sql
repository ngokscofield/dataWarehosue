USE [OrderDW]
GO
/****** Object:  Table [dbo].[RepresentativeOffice]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RepresentativeOffice](
	[city_key] [varchar](25) NOT NULL,
	[cityName] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[officeAddress] [nvarchar](100) NULL,
	[time_etablish] [datetime] NULL,
 CONSTRAINT [PK_RepresentativeOffice] PRIMARY KEY CLUSTERED 
(
	[city_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vùng của Tp nơi đặt VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'city_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'cityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bang' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ chi tiết VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'officeAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian thành lập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'time_etablish'
GO
/****** Object:  Table [dbo].[Items]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[item_key] [varchar](25) NOT NULL,
	[description] [nvarchar](255) NULL,
	[weight] [float] NULL,
	[price] [float] NULL,
	[size] [float] NULL,
	[time_import] [datetime] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[item_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'item_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả thêm thông tin mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trọng lượng của mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá bán của mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kích thước của mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian nhập hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'time_import'
GO
/****** Object:  Table [dbo].[Time]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Time](
	[time_key] [varchar](25) NOT NULL,
	[day] [int] NULL,
	[month] [int] NULL,
	[quarter] [int] NULL,
	[year] [int] NULL,
	[week] [int] NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[time_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Store]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[store_key] [varchar](25) NOT NULL,
	[city_key] [varchar](25) NOT NULL,
	[telephone] [varchar](15) NULL,
	[time_begin] [time](7) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[store_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã cửa hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'store_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vùng Tp nơi đặt VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'city_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại của cửa hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian mở cửa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'time_begin'
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_key] [varchar](25) NOT NULL,
	[customerName] [nvarchar](100) NULL,
	[firstOrderDate] [date] NULL,
	[city_key] [varchar](25) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customer_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'customer_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'customerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng đầu tiên của khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'firstOrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vùng của Tp nơi đặt VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'city_key'
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[order_key] [varchar](25) NOT NULL,
	[orderDate] [datetime] NULL,
	[customer_key] [varchar](25) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[order_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'order_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'orderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'customer_key'
GO
/****** Object:  Table [dbo].[SaleFactTable]    Script Date: 05/11/2019 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleFactTable](
	[time_key] [varchar](25) NOT NULL,
	[store_key] [varchar](25) NOT NULL,
	[customer_key] [varchar](25) NOT NULL,
	[item_key] [varchar](25) NOT NULL,
	[order_key] [varchar](25) NOT NULL,
	[units_sold] [nchar](10) NULL,
	[dollars_sold] [int] NULL,
 CONSTRAINT [PK_SaleFactTable] PRIMARY KEY CLUSTERED 
(
	[time_key] ASC,
	[store_key] ASC,
	[customer_key] ASC,
	[item_key] ASC,
	[order_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Customer_RepresentativeOffice]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_RepresentativeOffice] FOREIGN KEY([customer_key])
REFERENCES [dbo].[RepresentativeOffice] ([city_key])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_RepresentativeOffice]
GO
/****** Object:  ForeignKey [FK_Orders_Customer1]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer1] FOREIGN KEY([customer_key])
REFERENCES [dbo].[Customer] ([customer_key])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer1]
GO
/****** Object:  ForeignKey [FK_SaleFactTable_Customer]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[SaleFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SaleFactTable_Customer] FOREIGN KEY([customer_key])
REFERENCES [dbo].[Customer] ([customer_key])
GO
ALTER TABLE [dbo].[SaleFactTable] CHECK CONSTRAINT [FK_SaleFactTable_Customer]
GO
/****** Object:  ForeignKey [FK_SaleFactTable_Items]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[SaleFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SaleFactTable_Items] FOREIGN KEY([item_key])
REFERENCES [dbo].[Items] ([item_key])
GO
ALTER TABLE [dbo].[SaleFactTable] CHECK CONSTRAINT [FK_SaleFactTable_Items]
GO
/****** Object:  ForeignKey [FK_SaleFactTable_Orders]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[SaleFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SaleFactTable_Orders] FOREIGN KEY([order_key])
REFERENCES [dbo].[Orders] ([order_key])
GO
ALTER TABLE [dbo].[SaleFactTable] CHECK CONSTRAINT [FK_SaleFactTable_Orders]
GO
/****** Object:  ForeignKey [FK_SaleFactTable_Store]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[SaleFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SaleFactTable_Store] FOREIGN KEY([store_key])
REFERENCES [dbo].[Store] ([store_key])
GO
ALTER TABLE [dbo].[SaleFactTable] CHECK CONSTRAINT [FK_SaleFactTable_Store]
GO
/****** Object:  ForeignKey [FK_SaleFactTable_Time]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[SaleFactTable]  WITH CHECK ADD  CONSTRAINT [FK_SaleFactTable_Time] FOREIGN KEY([time_key])
REFERENCES [dbo].[Time] ([time_key])
GO
ALTER TABLE [dbo].[SaleFactTable] CHECK CONSTRAINT [FK_SaleFactTable_Time]
GO
/****** Object:  ForeignKey [FK_Store_RepresentativeOffice]    Script Date: 05/11/2019 16:12:33 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_RepresentativeOffice] FOREIGN KEY([city_key])
REFERENCES [dbo].[RepresentativeOffice] ([city_key])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_RepresentativeOffice]
GO
