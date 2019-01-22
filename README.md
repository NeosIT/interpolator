### Tool to interpolate variables in text files

The tool evaluates expressions like _${VAR}_ and tries to replace them with the value of the corresponding environment variable _VAR_.
If none is found, the expression is omitted.

## Usage:
```interpolator $source_file ($target_file)```

If no target file is specified, an in-place edit will be performed.

## Build
The project is built using the Makefile:
 
 ```make```
 
The image can be pushed via

```make push```

to the registry. Remember to adapt _DOCKER_TAG_ and login to your registry (```docker login```).

The project can be cleaned via ```make clean```.