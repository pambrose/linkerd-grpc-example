default: build

build:
	./mvnw -DskipTests=true clean package

tests:
	./mvnw clean package

clean:
	./mvnw clean

tree:
	./mvnw dependency:tree

jarcheck:
	./mvnw versions:display-dependency-updates

plugincheck:
	./mvnw versions:display-plugin-updates

versioncheck: jarcheck plugincheck
