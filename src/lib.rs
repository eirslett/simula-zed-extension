use zed_extension_api as zed;

struct SimulaExtension {
    // ... state
}

impl zed::Extension for SimulaExtension {
    fn new() -> Self {
        Self {}
    }
}

zed::register_extension!(SimulaExtension);
