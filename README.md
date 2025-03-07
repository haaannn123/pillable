ADDING SUBMODULE

```
git submodule add https://github.com/username/child-repo.git path/to/child-repo
```

CLONING MONOREPO + SUBMODULES

```
git clone --recurse-submodules https://github.com/yourusername/your-monorepo.git
```

OR FOR PULLING CHANGES

```
git submodule update --recursive --remote
```

RUNNING THE APP:

```
./run #include --clean for clean build
```

Startign just postgres

```
docker-compose up -d postgres
```

Build all

```
docker-compose build
```

Starting all

```
docker-compose up --build -d
```

Stopping all

```
docker-compose down -v
```
