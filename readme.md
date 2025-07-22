# ListReportProject

A monorepo containing two main projects:

* **cap-odata-service**: A local SAP CAP project exposing an OData v4 `CatalogService` with a `Books` entity.
* **fiori-listapp**: A SAP Fiori Elements List Report/Object Page UI consuming the CAP service.

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Repository Structure](#repository-structure)
3. [CAP OData Service](#cap-odata-service)

   * [Setup](#cap-setup)
   * [Run](#cap-run)
4. [Fiori Elements Front-end](#fiori-front-end)

   * [Setup](#fiori-setup)
   * [Run](#fiori-run)
5. [Contributing](#contributing)
6. [License](#license)

---

## Prerequisites

* Node.js (v14 or higher) & npm
* SAP CAP CLI (`@sap/cds` installed via npm)
* UI5 Tooling (`@ui5/cli` for the front-end)

---

## Repository Structure

```
ListReportProject/
├── cap-odata-service/      ← CAP project (db/, srv/, package.json)
└── fiori-listapp/          ← Fiori Elements app (webapp/, manifest.json, annotations/)
```

---

## CAP OData Service <a name="cap-odata-service"></a>

### Setup <a name="cap-setup"></a>

```bash
# 1. Navigate to the service folder
cd cap-odata-service

# 2. Install dependencies
npm install @sap/cds
npm install @cap-js/sqlite sqlite3 --save

# 3. Verify CLI installation
npx cds --version
```

### Run <a name="cap-run"></a>

```bash
# From cap-odata-service/
npx cds run --in-memory
```

* Service endpoint: `http://localhost:4004/CatalogService/`
* Metadata:       `http://localhost:4004/CatalogService/$metadata`
* Entity data:    `http://localhost:4004/CatalogService/Books?$format=json`

---

## Fiori Elements Front-end <a name="fiori-front-end"></a>

### Setup <a name="fiori-setup"></a>

```bash
# 1. Navigate to the UI folder
cd fiori-listapp

# 2. Install dependencies
npm install

# 3. Install UI5 CLI globally (if not already)
npm install -g @ui5/cli
```

### Run <a name="fiori-run"></a>

```bash
# From fiori-listapp/
ui5 serve --open
```

* Launches a local SAP Fiori Elements server
* Opens the List Report app in your default browser
* Fetches data from the local CAP service at port 4004

---

## Contributing <a name="contributing"></a>

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/xyz`)
3. Commit your changes (`git commit -m "Add xyz"`)
4. Push to your fork (`git push origin feature/xyz`)
5. Open a Pull Request

---

## License <a name="license"></a>

Distributed under the MIT License. See the [LICENSE](LICENSE) file for details.
