<!-- BEGIN:AVATAR -->
To be populated by generator-node node-cli-partials
<!-- END:AVATAR -->

<!-- BEGIN:BADGES -->
To be populated by generator-node node-cli-partials
<!-- END:BADGES -->

# {{project_name}}

{{project_name}} is a {{project_desc}} .

## Installation

```bash
npm install {{project_id}}
```

## Usage

Create a configuration file, e.g. `{{project_id}}.yaml`:

```yaml
---
text: Hello World
```

Create {{project_id}} object and run it:

```javascript
import Display from '{{project_id}}';

const display = new Display('{{project_id}}.yaml');
const text = display.format(false, 'lower');
console.log(text);
```

## Configuration

These are the configuration properties that you can use with `{{project_id}}`.
Some example configuration files are available on [examples](examples) folder.

| Property | Type | Description | Example |
|----------|------|-------------|---------|
| `text` | String | The message text | Hello World |

## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
To be populated by generator-node node-cli-partials
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
To be populated by generator-node node-cli-partials
<!-- END:BUILD_REPORTS -->
