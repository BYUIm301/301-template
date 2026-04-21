# Generated with Gemini
# https://gemini.google.com/share/22a003a085e5

# 1. Get the file currently being rendered
rendered_file <- Sys.getenv("QUARTO_RENDERED_FILE")

# 2. Check if we are already in the middle of an auto-update
# to prevent the infinite loop
if (Sys.getenv("INDEX_UPDATING") != "true") {

  # 3. Only trigger the update if the file rendered wasn't index.qmd itself
  if (basename(rendered_file) != "index.qmd") {

    # Set the 'lock' variable
    Sys.setenv(INDEX_UPDATING = "true")

    message("--- Automatically updating index.qmd ---")

    # Render the index
    quarto::quarto_render("index.qmd", quiet = TRUE)

    # Unset the 'lock' variable after completion
    Sys.unsetenv("INDEX_UPDATING")
  }
}
