export default function (plop) {

  plop.setHelper('copyrightYear', function () {
    return new Date().getFullYear();
  });

  plop.setHelper('underline', function (char, length) {
    return char.repeat(length);
  });

  plop.setHelper('titlecase', function (text) {
    return text.charAt(0).toUpperCase() + text.slice(1);
  });

  plop.setHelper('uppercase', function (text) {
    return text.toUpperCase();
  });

  plop.setHelper('prefixConst', function (text) {
    return text.toUpperCase().replace(/\s+/g, '').replace(/[^A-Z]/g, '_');
  });

  const prompts = [
    {
      type: 'input',
      name: 'project_id',
      message: 'Project ID'
    },
    {
      type: 'input',
      name: 'project_name',
      message: 'Project Name'
    },
    {
      type: 'input',
      name: 'project_desc',
      message: 'Project Description '
    },
    {
      type: 'input',
      name: 'author_name',
      message: 'Author Name'
    },
    {
      type: 'input',
      name: 'author_email',
      message: 'Author Email'
    },
    {
      type: 'input',
      name: 'author_url',
      message: 'Author URL'
    },
    {
      type: 'input',
      name: 'github_id',
      message: 'GitHub ID'
    },
    {
      type: 'input',
      name: 'github_repo',
      message: 'GitHub Repository'
    }
  ];

  plop.setGenerator('node-cli', {
    description: 'Node CLI package template',
    prompts: prompts,
    actions: [
      {
        type: 'addMany',
        destination: 'stage/node-cli',
        templateFiles: [
          'templates/node-cli/.*/*/*/*',
          'templates/node-cli/.*/*/*',
          'templates/node-cli/**/.*',
          'templates/node-cli/**/*'
        ],
        base: 'templates/node-cli'
      }
    ]
  });

  plop.setGenerator('node-lib', {
    description: 'Node library package template',
    prompts: prompts,
    actions: [
      {
        type: 'addMany',
        destination: 'stage/node-lib',
        templateFiles: [
          'templates/node-lib/.*/*/*/*',
          'templates/node-lib/.*/*/*',
          'templates/node-lib/**/.*',
          'templates/node-lib/**/*'
        ],
        base: 'templates/node-lib'
      }
    ]
  });
};