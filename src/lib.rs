use zed_extension_api as zed;

struct SimulaExtension {
    // ... state
}

impl zed::Extension for SimulaExtension {
    // ...
}

zed::register_extension!(SimulaExtension);
