### User

| UserID | Password | BirthDate | RegistrationDate | Email | PhoneNumber |
| --- | --- | --- | --- | --- | --- |
| U123 | secret123 | 1990-01-01 | 2023-05-01 | user@example.com | +905551112233 |

### Campaign

| CampainID | Name | Description | StartDate | EndDate |
| --- | --- | --- | --- | --- |
| C001 | Spring Sale | Discount on all products | 2024-01-01 | 2024-03-01 |

### ShoppingCart

| ShoppingCartID |
| --- |
| SC789 |

### Stock

| Inventory.InventoryID | Barcode | Quantity | ListPrice |
| --- | --- | --- | --- |
| INV001 | 1234567890123 | 10 | 99.99 |

### AppliedToPayment

| PaymentID | PromotionCode.PromotionCodeID |
| --- | --- |
| P001 | PR123 |

### Subscription

| SubscriptionID | StartDate | EndDate | RenewalDate | Fee | User.UserID |
| --- | --- | --- | --- | --- | --- |
| S001 | 2024-01-01 | 2024-03-01 | 2025-01-01 | 29.99 | U123 |

### ProductStock

| Stock.InventoryID | Stock.Barcode | Product.ProductID |
| --- | --- | --- |
| INV001 | 1234567890123 | PRD001 |

### PaymentDetail

| PaymentDetailID | CardNumber | CardExpiryDate | CardHolderName | CVV | User.UserID |
| --- | --- | --- | --- | --- | --- |
| example | 4111111111111111 | 12/26 | John Doe | 123 | U123 |

### Category

| CategoryID | CategoryName | Category.ParentCategoryID |
| --- | --- | --- |
| CAT01 | Electronics | CAT00 |

### Payment

| PaymentID | PaymentAmount | PaymentMethod | CardNumber | CardExpiryDate | CardHolderName | CVV | PaymentDetail.PaymentDetailID |
| --- | --- | --- | --- | --- | --- | --- | --- |
| P001 | 199.99 | CreditCard | 4111111111111111 | 12/26 | John Doe | 123 | example |

### Shipment

| TrackingNumber | PackageWeight | PackageDimension | CarrierName | DeliveryStatus | DeliveryDate | EstimatedDeliveryDate | ShipmentDate | Logistic.LogisticID |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| TRK123456 | 1.2kg | 30x20x10 | DHL | Shipped | 2024-04-01 | 2024-04-03 | 2024-03-30 | LOG123 |

### CampaingCart

| Campaing.CampaingID | ShoppingCart.ShoppingCartID |
| --- | --- |
| example | SC789 |

### CampaingProduct

| Campaing.CampaingID | Product.ProductID |
| --- | --- |
| example | PRD001 |

### CategoryProduct

| Category.CategoryID | Product.ProductID |
| --- | --- |
| CAT01 | PRD001 |

### CartItems

| Product.ProductID | ShoppingCart.ShoppingCartID | Quantity |
| --- | --- | --- |
| PRD001 | SC789 | 10 |

### UserLastLogin

| User.UserID | LastLogin |
| --- | --- |
| U123 | 2025-04-01 |

### Seller

| SellerID(User.UserID) | FirstName | LastName | StoreName | TaxID | StoreRating | SellerType | StoreDate | TotalSellNumber | IbanNo | SalesCategoryType |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| example | Ali | Veli | Ali's Tech Store | 1234567890 | 4.7 | Individual | 2022-11-11 | 300 | TR0001002003004005006000 | Electronics |

### Campaign

| CampainID | Name | Description | StartDate | EndDate | IsPromotion | PromotionTypePromotionStartDate | PromotionEndDate | PromotionConditions | Status | IsDiscount | DiscountType | DiscountStartDate | DiscountEndDate | DiscountValue | DiscountConditions |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| C001 | Spring Sale | Discount on all products | 2024-01-01 | 2024-03-01 | example | example | example | example | example | example | example | example | example | example | example |

### Order

| OrderNo | Customer.CustomerID | ShoppingCart.ShoppingCartID | OrderDate | OrderStatus | TotalAmount | Payment.PaymentID | PaymentDate | PaymentStatus | Logistic.LogisticID | ShippingDetails.ShippingID |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ORD456 | CUS001 | SC789 | 2024-03-25 | Delivered | 299.99 | P001 | example | example | LOG123 | SHIP789 |

### Collection

| CollectionName | Customer.CustomerID |
| --- | --- |
| Favorites | CUS001 |

### Customer

| CustomerID(User.UserID) | FirstName | LastName | ShoppingCart.ShoppingCartID |
| --- | --- | --- | --- |
| example | Ali | Veli | SC789 |

### PromotionCode

| PromotionCodeID | StartDate | EndDate | CodeType | Information | Customer.CustomerID |
| --- | --- | --- | --- | --- | --- |
| PR123 | 2024-01-01 | 2024-03-01 | Percentage | 10% off | CUS001 |

### Product

| ProductID | ProductName | Information | Brand | Price | Properties | Seller.SellerID |
| --- | --- | --- | --- | --- | --- | --- |
| PRD001 | example | 10% off | BrandX | 59.99 | Color:Black;Size:M | SELL01 |

### Payment

| PaymentID | PaymentAmount | PaymentMethod | CardNumber | CardExpiryDate | CardHolderName | CVV | PaymentDetail.PaymentDetailID | Customer.CustomerID |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| P001 | 199.99 | CreditCard | 4111111111111111 | 12/26 | John Doe | 123 | example | CUS001 |

### Inventory

| InventoryID | AddressLine | InventoryName | Seller.SellerID |
| --- | --- | --- | --- |
| INV001 | 123 Main St | MainWarehouse | SELL01 |

### Follow

| Seller.SellerID | Customer.CustomerID |
| --- | --- |
| SELL01 | CUS001 |

### SellerCampaign

| Seller.SellerID | Campaign.CampaignID |
| --- | --- |
| SELL01 | example |

### CollectionHas

| CollectionName | Customer.CustomerID | Product.ProductID |
| --- | --- | --- |
| Favorites | CUS001 | PRD001 |

### OrderItem

| OrderNo | Customer.CustomerID | ShoppingCart.ShoppingCartID | ProductProductID | OrderItemNo | Quantity | ItemStatus | Shipment.TrackingNumber |
| --- | --- | --- | --- | --- | --- | --- | --- |
| ORD456 | CUS001 | SC789 | example | OI123 | 10 | Completed | TRK123456 |

### Review

| ReviewNo | OrderNo | Customer.CustomerID | ShoppingCart.ShoppingCartID | ProductProductID | OrderItemNo | ReviewDate | Rating | Comment |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| RV001 | ORD456 | CUS001 | SC789 | example | OI123 | 2024-04-02 | 5 | Great product! |

