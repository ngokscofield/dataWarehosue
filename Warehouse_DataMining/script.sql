USE [OrderDW]
GO
/****** Object:  Table [dbo].[RepresentativeOffice]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RepresentativeOffice](
	[cityCode] [varchar](25) NOT NULL,
	[cityName] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[officeAddress] [nvarchar](100) NULL,
	[time_etablish] [datetime] NULL,
 CONSTRAINT [PK_RepresentativeOffice] PRIMARY KEY CLUSTERED 
(
	[cityCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vùng của Tp nơi đặt VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'cityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'cityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bang' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ chi tiết VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'officeAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian thành lập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RepresentativeOffice', @level2type=N'COLUMN',@level2name=N'time_etablish'
GO
/****** Object:  Table [dbo].[Items]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[itemCode] [varchar](25) NOT NULL,
	[description] [nvarchar](255) NULL,
	[weight] [float] NULL,
	[price] [float] NULL,
	[size] [float] NULL,
	[time_import] [datetime] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[itemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'itemCode'
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
/****** Object:  Table [dbo].[Store]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[storeOrder] [varchar](25) NOT NULL,
	[cityCode] [varchar](25) NULL,
	[telephone] [varchar](15) NULL,
	[time_begin] [time](7) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[storeOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã cửa hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'storeOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vùng Tp nơi đặt VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'cityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại của cửa hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian mở cửa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'time_begin'
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customerCode] [varchar](25) NOT NULL,
	[customerName] [nvarchar](100) NULL,
	[firstOrderDate] [date] NULL,
	[cityCode] [varchar](25) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'customerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'customerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng đầu tiên của khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'firstOrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vùng của Tp nơi đặt VP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'cityCode'
GO
/****** Object:  Table [dbo].[PostOffice_Customer]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostOffice_Customer](
	[customerCode] [varchar](25) NOT NULL,
	[postAddress] [nvarchar](255) NULL,
	[time_order_by_post] [datetime] NULL,
 CONSTRAINT [PK_PostOffice_Customer] PRIMARY KEY CLUSTERED 
(
	[customerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostOffice_Customer', @level2type=N'COLUMN',@level2name=N'customerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ bưu điện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostOffice_Customer', @level2type=N'COLUMN',@level2name=N'postAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian đặt hàng qua bưu điện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PostOffice_Customer', @level2type=N'COLUMN',@level2name=N'time_order_by_post'
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[orderCode] [varchar](25) NOT NULL,
	[orderDate] [datetime] NULL,
	[customerCode] [varchar](25) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'orderCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'orderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'customerCode'
GO
/****** Object:  Table [dbo].[ItemStore]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemStore](
	[itemCode] [varchar](25) NOT NULL,
	[storeCode] [varchar](25) NOT NULL,
	[quantityStock] [int] NULL,
	[time_add_item] [datetime] NULL,
 CONSTRAINT [PK_ItemStored] PRIMARY KEY CLUSTERED 
(
	[itemCode] ASC,
	[storeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemStore', @level2type=N'COLUMN',@level2name=N'itemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã cửa hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemStore', @level2type=N'COLUMN',@level2name=N'storeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng còn trong kho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemStore', @level2type=N'COLUMN',@level2name=N'quantityStock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian thêm vào kho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemStore', @level2type=N'COLUMN',@level2name=N'time_add_item'
GO
/****** Object:  Table [dbo].[Travel_Customer]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Travel_Customer](
	[customerCode] [varchar](25) NOT NULL,
	[tourGuide] [nvarchar](100) NULL,
	[purchase_time] [datetime] NULL,
 CONSTRAINT [PK_Travel_Customer] PRIMARY KEY CLUSTERED 
(
	[customerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Travel_Customer', @level2type=N'COLUMN',@level2name=N'customerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hướng dẫn viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Travel_Customer', @level2type=N'COLUMN',@level2name=N'tourGuide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian thanh toán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Travel_Customer', @level2type=N'COLUMN',@level2name=N'purchase_time'
GO
/****** Object:  Table [dbo].[ItemOrder]    Script Date: 05/04/2019 01:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemOrder](
	[itemCode] [varchar](25) NOT NULL,
	[orderCode] [varchar](25) NOT NULL,
	[orderQuantity] [varchar](25) NULL,
	[orderPrice] [float] NULL,
	[time_order] [datetime] NULL,
 CONSTRAINT [PK_ItemOrdered] PRIMARY KEY CLUSTERED 
(
	[itemCode] ASC,
	[orderCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemOrder', @level2type=N'COLUMN',@level2name=N'itemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã cửa hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemOrder', @level2type=N'COLUMN',@level2name=N'orderCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemOrder', @level2type=N'COLUMN',@level2name=N'orderQuantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemOrder', @level2type=N'COLUMN',@level2name=N'orderPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemOrder', @level2type=N'COLUMN',@level2name=N'time_order'
GO
/****** Object:  ForeignKey [FK_Customer_RepresentativeOffice]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_RepresentativeOffice] FOREIGN KEY([customerCode])
REFERENCES [dbo].[RepresentativeOffice] ([cityCode])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_RepresentativeOffice]
GO
/****** Object:  ForeignKey [FK_ItemOrdered_Orders]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[ItemOrder]  WITH CHECK ADD  CONSTRAINT [FK_ItemOrdered_Orders] FOREIGN KEY([orderQuantity])
REFERENCES [dbo].[Orders] ([orderCode])
GO
ALTER TABLE [dbo].[ItemOrder] CHECK CONSTRAINT [FK_ItemOrdered_Orders]
GO
/****** Object:  ForeignKey [FK_ItemStored_Items]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[ItemStore]  WITH CHECK ADD  CONSTRAINT [FK_ItemStored_Items] FOREIGN KEY([itemCode])
REFERENCES [dbo].[Items] ([itemCode])
GO
ALTER TABLE [dbo].[ItemStore] CHECK CONSTRAINT [FK_ItemStored_Items]
GO
/****** Object:  ForeignKey [FK_ItemStored_Store]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[ItemStore]  WITH CHECK ADD  CONSTRAINT [FK_ItemStored_Store] FOREIGN KEY([storeCode])
REFERENCES [dbo].[Store] ([storeOrder])
GO
ALTER TABLE [dbo].[ItemStore] CHECK CONSTRAINT [FK_ItemStored_Store]
GO
/****** Object:  ForeignKey [FK_Orders_Customer1]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer1] FOREIGN KEY([customerCode])
REFERENCES [dbo].[Customer] ([customerCode])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer1]
GO
/****** Object:  ForeignKey [FK_PostOffice_Customer_Customer]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[PostOffice_Customer]  WITH CHECK ADD  CONSTRAINT [FK_PostOffice_Customer_Customer] FOREIGN KEY([customerCode])
REFERENCES [dbo].[Customer] ([customerCode])
GO
ALTER TABLE [dbo].[PostOffice_Customer] CHECK CONSTRAINT [FK_PostOffice_Customer_Customer]
GO
/****** Object:  ForeignKey [FK_Store_RepresentativeOffice]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_RepresentativeOffice] FOREIGN KEY([cityCode])
REFERENCES [dbo].[RepresentativeOffice] ([cityCode])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_RepresentativeOffice]
GO
/****** Object:  ForeignKey [FK_Travel_Customer_Customer]    Script Date: 05/04/2019 01:10:58 ******/
ALTER TABLE [dbo].[Travel_Customer]  WITH CHECK ADD  CONSTRAINT [FK_Travel_Customer_Customer] FOREIGN KEY([customerCode])
REFERENCES [dbo].[Customer] ([customerCode])
GO
ALTER TABLE [dbo].[Travel_Customer] CHECK CONSTRAINT [FK_Travel_Customer_Customer]
GO
