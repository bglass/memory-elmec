module.exports = {
    entry: './src/static/index.js',
    output: {
        path: '/home/glass/work/elm/experiments/elmec/dist./dist',
        publicPath: '/assets/',
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test:    /\.elm$/,
                exclude: [/elm-stuff/, /node_modules/],
                loader:  'elm-webpack-loader?verbose=true&warn=true',
            }
        ]
    },
    resolve: {
        extensions: ['.js', '.elm']
    },
    mode: 'development',
    devServer: { inline: true }
}
