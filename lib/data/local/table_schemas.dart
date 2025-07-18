const List<String> tableSchemas = [
  '''-- Tabla de Usuarios autenticados con Google
CREATE TABLE Users (
  id INTEGER PRIMARY KEY,
  googleId TEXT,
  email TEXT UNIQUE,
  name TEXT,
  photoUrl TEXT,
  planId INTEGER,
  isActive INTEGER NOT NULL DEFAULT 1,
  createdAt TEXT NOT NULL,
  updatedAt TEXT,
  FOREIGN KEY (planId) REFERENCES Plans(id)
)''',

  '''-- Empleados
CREATE TABLE Employees (
  id INTEGER PRIMARY KEY,
  userId INTEGER,
  name TEXT NOT NULL,
  email TEXT,
  phone TEXT,
  createdAt TEXT NOT NULL,
  updatedAt TEXT,
  syncStatus TEXT,
  remoteId INTEGER,
  FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Sucursales
CREATE TABLE Branches (
  id INTEGER PRIMARY KEY,
  userId INTEGER,
  name TEXT NOT NULL,
  address TEXT,
  createdAt TEXT NOT NULL,
  updatedAt TEXT,
  syncStatus TEXT,
  remoteId INTEGER,
  FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Productos
CREATE TABLE Products (
  id INTEGER PRIMARY KEY,
  userId INTEGER,
  name TEXT NOT NULL,
  description TEXT,
  price REAL NOT NULL,
  sku TEXT UNIQUE NOT NULL,
  createdAt TEXT NOT NULL,
  updatedAt TEXT,
  syncStatus TEXT,
  remoteId INTEGER,
  FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Inventario por sucursal
CREATE TABLE Inventory (
  id INTEGER PRIMARY KEY,
  productId INTEGER,
  branchId INTEGER,
  stock INTEGER NOT NULL DEFAULT 0,
  updatedAt TEXT NOT NULL,
  FOREIGN KEY (productId) REFERENCES Products(id) ON DELETE CASCADE,
  FOREIGN KEY (branchId) REFERENCES Branches(id) ON DELETE CASCADE
)''',

  '''-- Tabla Sales con referencia al método de pago
CREATE TABLE Sales (
  id INTEGER PRIMARY KEY,
  userId INTEGER,
  employeeId INTEGER,
  branchId INTEGER,
  paymentMethodId INTEGER,
  total REAL NOT NULL,
  paymentToken TEXT,
  createdAt TEXT NOT NULL,
  updatedAt TEXT,
  syncStatus TEXT,
  remoteId INTEGER,
  FOREIGN KEY (userId) REFERENCES Users(id),
  FOREIGN KEY (employeeId) REFERENCES Employees(id),
  FOREIGN KEY (branchId) REFERENCES Branches(id),
  FOREIGN KEY (paymentMethodId) REFERENCES PaymentMethods(id)
)''',

  '''-- Ítems vendidos en una venta
CREATE TABLE SaleItems (
  id INTEGER PRIMARY KEY,
  saleId INTEGER,
  productId INTEGER,
  quantity INTEGER NOT NULL,
  price REAL NOT NULL,
  FOREIGN KEY (saleId) REFERENCES Sales(id) ON DELETE CASCADE,
  FOREIGN KEY (productId) REFERENCES Products(id)
)''',

  '''-- Compras
CREATE TABLE Purchases (
  id INTEGER PRIMARY KEY,
  userId INTEGER,
  total REAL NOT NULL,
  createdAt TEXT NOT NULL,
  updatedAt TEXT,
  syncStatus TEXT,
  remoteId INTEGER,
  FOREIGN KEY (userId) REFERENCES Users(id)
)''',

  '''-- Ítems comprados en una compra
CREATE TABLE PurchaseItems (
  id INTEGER PRIMARY KEY,
  purchaseId INTEGER,
  productId INTEGER,
  quantity INTEGER NOT NULL,
  price REAL NOT NULL,
  FOREIGN KEY (purchaseId) REFERENCES Purchases(id) ON DELETE CASCADE,
  FOREIGN KEY (productId) REFERENCES Products(id)
)''',

  '''-- Logs de actividad del sistema
CREATE TABLE ActivityLogs (
  id INTEGER PRIMARY KEY,
  userId INTEGER,
  action TEXT NOT NULL,
  tableAffected TEXT,
  recordId INTEGER,
  timestamp TEXT NOT NULL,
  ipAddress TEXT,
  previousData TEXT,
  newData TEXT,
  FOREIGN KEY (userId) REFERENCES Users(id)
)''',

  '''-- Métodos de pago (efectivo, QR, etc.)
CREATE TABLE PaymentMethods (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
)''',

  ''' -- Planes de suscripción
CREATE TABLE Plans (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  price REAL NOT NULL,
  transactionLimit INTEGER NOT NULL,
  description TEXT,
  isActive INTEGER NOT NULL DEFAULT 1
)''',

  '''INSERT INTO PaymentMethods (name, description) VALUES
('Efectivo', 'Pago en efectivo'),
('QR', 'Pago mediante código QR')''',
];
