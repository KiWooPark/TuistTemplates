import ProjectDescription

let uikitTemplate = Template(
    description: "UIKit 기반 Tuist 프로젝트 템플릿",
    attributes: [
        .required("name"),
        .optional("bundlePrefix", default: "io.tuist")
    ],
    items: [
        .file(
            path: "Tuist.swift",
            templatePath: "Tuist.stencil"
        ),
        .file(
            path: "Workspace.swift",
            templatePath: "Workspace.stencil"
        ),
        .file(
            path: "{{ name }}/Project.swift",
            templatePath: "Project.stencil"
        ),
        .file(
            path: "Tuist/Package.swift",
            templatePath: "Package.stencil"
        ),
        .file(
            path: "{{ name }}/Sources/Application/AppDelegate.swift",
            templatePath: "AppDelegate.stencil"
        ),
        .file(
            path: "{{ name }}/Sources/Application/SceneDelegate.swift",
            templatePath: "SceneDelegate.stencil"
        ),
        .file(
            path: "{{ name }}/Sources/ViewController.swift",
            templatePath: "ViewController.stencil"
        ),
        .file(
            path: "{{ name }}/Resources/Assets.xcassets/Contents.json",
            templatePath: "AssetsContents.stencil"
        ),
        .file(
            path: "{{ name }}/Resources/Assets.xcassets/AccentColor.colorset/Contents.json",
            templatePath: "AccentColor.stencil"
        ),
        .file(
            path: "{{ name }}/Resources/Assets.xcassets/AppIcon.appiconset/Contents.json",
            templatePath: "AppIcon.stencil"
        ),
        .file(
            path: "{{ name }}/Resources/LaunchScreen.storyboard",
            templatePath: "LaunchScreen.stencil"
        ),
        .file(
            path: "{{ name }}/Tests/{{ name }}Tests.swift",
            templatePath: "Tests.stencil"
        )
    ]
)
