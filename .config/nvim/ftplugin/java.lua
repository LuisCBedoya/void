local home = os.getenv('HOME')
local jdtls = require('jdtls')
local capabilities = vim.lsp.protocol.make_client_capabilities()
local on_attach = require('plugins.lsp.handlers').on_attach
local extendedClientCapabilities = jdtls.extendedClientCapabilities
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local bundles = {
  vim.fn.glob(home .. '/.local/share/nvim/mason/packages/java-test/extension/server/*.jar'),
  vim.fn.glob(
    home
      .. '/.local/share/nvim/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar'
  ),
}

local function setup_jdtls()
  local workspace_path = home .. '/workspace/'
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
  local workspace_dir = workspace_path .. project_name
  local root_markers = { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' }
  local root_dir = require('jdtls.setup').find_root(root_markers)
  if root_dir == '' then
    return
  end

  local config = {
    CONFIG = CONFIG or 'default',
    cmd = {
      'java',
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.protocol=true',
      '-Dlog.level=ALL',
      '-javaagent:' .. home .. '/.local/share/nvim/mason/packages/jdtls/lombok.jar',
      '-Xms1g',
      '--add-modules=ALL-SYSTEM',
      '--add-opens',
      'java.base/java.util=ALL-UNNAMED',
      '--add-opens',
      'java.base/java.lang=ALL-UNNAMED',
      '-jar',
      vim.fn.glob(home .. '/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
      '-configuration',
      home .. '/.local/share/nvim/mason/packages/jdtls/config_' .. CONFIG,
      '-data',
      workspace_dir,
    },
    capabilities = capabilities,
    on_attach = on_attach,
    root_dir = root_dir,
    settings = {
      java = {
        -- jdt = {
        --   ls = {
        --     vmargs = "-XX:+UseParallelGC -XX:GCTimeRatio=4 -XX:AdaptiveSizePolicyWeight=90 -Dsun.zip.disableMemoryMapping=true -Xmx1G -Xms100m"
        --   }
        -- },
        eclipse = {
          downloadSources = true,
        },
        configuration = {
          updateBuildConfiguration = 'interactive',
        },
        maven = {
          downloadSources = true,
        },
        implementationsCodeLens = {
          enabled = true,
        },
        referencesCodeLens = {
          enabled = true,
        },
        references = {
          includeDecompiledSources = true,
        },
        inlayHints = {
          parameterNames = {
            enabled = 'all',
          },
        },
        format = {
          enabled = true,
          settings = {
            profile = 'asdf',
          },
        },
      },
      signatureHelp = { enabled = true },
      completion = {
        favoriteStaticMembers = {
          'org.hamcrest.MatcherAssert.assertThat',
          'org.hamcrest.Matchers.*',
          'org.hamcrest.CoreMatchers.*',
          'org.junit.jupiter.api.Assertions.*',
          'java.util.Objects.requireNonNull',
          'java.util.Objects.requireNonNullElse',
          'org.mockito.Mockito.*',
        },
      },
      contentProvider = { preferred = 'fernflower' },
      extendedClientCapabilities = extendedClientCapabilities,
      sources = {
        organizeImports = {
          starThreshold = 9999,
          staticStarThreshold = 9999,
        },
      },
      codeGeneration = {
        toString = {
          template = '${object.className}{${member.name()}=${member.value}, ${otherMembers}}',
        },
        useBlocks = true,
      },
    },
    flags = {
      allow_incremental_sync = true,
    },
    init_options = {
      bundles = bundles,
    },
  }

  jdtls.start_or_attach(config)
end

CONFIG = 'linux'

setup_jdtls()
