import ProjectDescription

let moduleTemplate = Template(
    description: "모듈 템플릿 (Framework 모듈)",
    attributes: [
        .required("name"),
        .optional("bundlePrefix", default: "com.example")
    ],
    items: [
        .file(
            path: "{{ name }}/Project.swift",
            templatePath: "Project.stencil"
        ),
        .file(
            path: "{{ name }}/Sources/Placeholder.swift",
            templatePath: "Placeholder.stencil"
        ),
        .file(
            path: "{{ name }}/Resources/Placeholder.swift",
            templatePath: "Placeholder.stencil"
        ),
        .file(
            path: "{{ name }}/Tests/{{ name }}Tests.swift",
            templatePath: "Tests.stencil"
        )
    ]
)
