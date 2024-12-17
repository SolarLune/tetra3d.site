find ../tetra3d/examples -maxdepth 1 -mindepth 1 -type d | while read dir; do
    # env GOOS=js GOARCH=wasm go build -o logo.wasm ./examples/logo
    exampleName=$(basename $dir)
    echo $dir
    cd $dir
    env GOOS=js GOARCH=wasm go build -o $exampleName.wasm .
    mv $exampleName.wasm ../../../tetra3d.site/examples/$exampleName.wasm
    echo $exampleName
    cd ../../../tetra3d.site
done
