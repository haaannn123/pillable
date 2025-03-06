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