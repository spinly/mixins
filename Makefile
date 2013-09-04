
default: components node_modules build/build.css

build/build.css: index.styl
	@component build --dev --use stylus

node_modules: package.json
	@npm install

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean build
