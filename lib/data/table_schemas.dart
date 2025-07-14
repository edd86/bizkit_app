const List<String> tableSchemas = [
  '''-- Tabla de Usuarios autenticados con Google
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    googleId TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL,
    name TEXT,
    photoUrl TEXT,
    plan TEXT DEFAULT 'free',
    isActive BOOLEAN DEFAULT 1,
    createdAt TEXT DEFAULT CURRENT_TIMESTAMP
)''',

  '''-- Roles del sistema
CREATE TABLE Roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    description TEXT
)''',

  '''-- Relación Usuario - Roles
CREATE TABLE UserRoles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    roleId INTEGER NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY (roleId) REFERENCES Roles(id) ON DELETE CASCADE
)''',

  '''-- Permisos disponibles
CREATE TABLE Permissions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    description TEXT
)''',

  '''-- Relación Roles - Permisos
CREATE TABLE RolePermissions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    roleId INTEGER NOT NULL,
    permissionId INTEGER NOT NULL,
    FOREIGN KEY (roleId) REFERENCES Roles(id) ON DELETE CASCADE,
    FOREIGN KEY (permissionId) REFERENCES Permissions(id) ON DELETE CASCADE
)''',

  '''-- Empleados
CREATE TABLE Employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    name TEXT NOT NULL,
    email TEXT,
    phone TEXT,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Sucursales
CREATE TABLE Branches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    name TEXT NOT NULL,
    address TEXT,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Productos
CREATE TABLE Products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    price REAL NOT NULL,
    sku TEXT UNIQUE,
    stock INTEGER DEFAULT 0,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Inventario por sucursal
CREATE TABLE Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    productId INTEGER NOT NULL,
    branchId INTEGER NOT NULL,
    stock INTEGER DEFAULT 0,
    updatedAt TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (productId) REFERENCES Products(id) ON DELETE CASCADE,
    FOREIGN KEY (branchId) REFERENCES Branches(id) ON DELETE CASCADE
)''',

  '''-- Tabla Sales con referencia al método de pago
CREATE TABLE Sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    employeeId INTEGER,
    branchId INTEGER,
    paymentMethodId INTEGER NOT NULL,
    total REAL NOT NULL,
    paymentToken TEXT,
    createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY (employeeId) REFERENCES Employees(id),
    FOREIGN KEY (branchId) REFERENCES Branches(id),
    FOREIGN KEY (paymentMethodId) REFERENCES PaymentMethods(id)
)''',

  '''-- Ítems vendidos en una venta
CREATE TABLE SaleItems (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    saleId INTEGER NOT NULL,
    productId INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    price REAL NOT NULL,
    FOREIGN KEY (saleId) REFERENCES Sales(id) ON DELETE CASCADE,
    FOREIGN KEY (productId) REFERENCES Products(id)
)''',

  '''-- Compras
CREATE TABLE Purchases (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    total REAL NOT NULL,
    createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Ítems comprados en una compra
CREATE TABLE PurchaseItems (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    purchaseId INTEGER NOT NULL,
    productId INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    price REAL NOT NULL,
    FOREIGN KEY (purchaseId) REFERENCES Purchases(id) ON DELETE CASCADE,
    FOREIGN KEY (productId) REFERENCES Products(id)
)''',

  '''-- Suscripciones activas
CREATE TABLE Subscriptions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    currentPeriodStart TEXT NOT NULL,
    currentPeriodEnd TEXT NOT NULL,
    isActive BOOLEAN DEFAULT 1,
    totalTransactions INTEGER DEFAULT 0,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Historial de pagos de suscripción
CREATE TABLE SubscriptionPayments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER NOT NULL,
    amount REAL NOT NULL,
    paymentDate TEXT DEFAULT CURRENT_TIMESTAMP,
    reference TEXT,
    FOREIGN KEY (userId) REFERENCES Users(id) ON DELETE CASCADE
)''',

  '''-- Logs de actividad del sistema
CREATE TABLE ActivityLogs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER,
    action TEXT NOT NULL,
    tableAffected TEXT,
    recordId INTEGER,
    timestamp TEXT DEFAULT CURRENT_TIMESTAMP,
    ipAddress TEXT,
    FOREIGN KEY (userId) REFERENCES Users(id)
)''',

  '''-- Métodos de pago (efectivo, QR, etc.)
CREATE TABLE PaymentMethods (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    description TEXT
)''',

  '''CREATE TABLE Plans (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    price REAL NOT NULL,
    transactionLimit INTEGER NOT NULL,
    description TEXT,
    isActive BOOLEAN DEFAULT 1
)''',

  '''INSERT INTO PaymentMethods (name, description) VALUES
('Efectivo', 'Pago en efectivo'),
('QR', 'Pago mediante código QR')''',
];
