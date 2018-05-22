var path = require("path");

module.exports = {
  entry: {
    app: ['./src/static/index.js']
  },
  output: {
    path: path.resolve(__dirname + '/dist'),
    publicPath: '/assets/',
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.(css|scss)$/,
        use: [
          'style-loader',
          'css-loader',
        ]
      },
      {
        test:    /\.html$/,
        exclude: /node_modules/,
        loader:  'file-loader?name=[name].[ext]',
      },
      {
        test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-woff',
      },
      {
        test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'file-loader',
      },
      {
        test:    /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader:  'elm-webpack-loader?verbose=true&warn=true',
      }
    ],
    noParse: /\.elm$/,
  },
  resolve: {
    extensions: ['.js', '.elm']
  },
  mode: 'development',
  devServer: {
    inline: true,
    stats: { colors: true },
  },
}
