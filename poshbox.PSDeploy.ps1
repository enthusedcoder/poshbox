Deploy poshboxtopsgallery {
    By PSGalleryModule {
        FromSource "module"
        To PSGallery
        WithOptions @{
            ApiKey = $env:API_KEY
        }
    }
}