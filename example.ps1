# Set the source and destination file paths
$sourceFile1 = "Path/to/first/file.xlsx"
$sourceFile2 = "Path/to/second/file.xlsx"
$destinationFolder = "Path/to/destination/folder"

# Check if the source files exist
if ((Test-Path $sourceFile1) -and (Test-Path $sourceFile2)) {
    # Copy the files to the destination folder
    Copy-Item $sourceFile1 -Destination $destinationFolder -Force
    Copy-Item $sourceFile2 -Destination $destinationFolder -Force
    Write-Output "Files copied successfully."
} else {
    Write-Output "One or both source files do not exist."
}
