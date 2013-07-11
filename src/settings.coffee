module.exports.export = (env) ->
  file = "../settings.#{env}.json"
  try
    return require file
  catch e
    console.error "Settings file not found: #{file}"
    process.exit 1

