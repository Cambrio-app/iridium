# Iridium [Ir], the multi-platform reader toolkit

Iridium is a multiplatform e-reader Software Development Kit. It leverages Flutter's multiplatform capabilities and
minimizes the platform-specific code as much as possible. Hence, it does provide a really unified codebase.

## Supported platforms

Iridium is currently developed and tested on Android and iOS first, large parts of the code should be reusable for
desktop and web apps. Such desktop and web versions are not currently on the roadmap, but will be considered if we can
collect external funding or aggregate external contributors.

## Components

This SDK provides ppen-source unofficial Dart/Flutter ports of Readium 2 (R2)
components<sup>[1](#readium_foundation)</sup>, following
the [Readium 2 architecture](https://github.com/readium/architecture):


| Name                                                                          | Usage                                                                       |
|-------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| [**Mno OPDS**](https://pub.dev/packages/mno_opds)                             | OPDS parsers                                                                |
| [**mno_shared_dart**](https://github.com/Mantano/mno_shared_dart)             | Shared Publication models and utilities                                     |
| [**mno_streamer_dart**](https://github.com/Mantano/mno_streamer_dart)         | Publication parsers                                                         |
| [**mno_server_dart**](https://github.com/Mantano/mno_server_dart)             | Local HTTP server                                                           |
| [**mno_navigator_flutter**](https://github.com/Mantano/mno_navigator_flutter) | Navigator                                                                   |
| [**mno_opds_dart**](https://github.com/Mantano/mno_opds_dart)                 | Parsers for OPDS catalog feeds                                              |
| [**mno_commons_dart**](https://github.com/Mantano/mno_commons_dart)           | Other misc. utilities (specific to this Flutter port, not found in Readium) |
| [**mno_lcp_dart**](https://github.com/Mantano/mno_lcp_dart)                   | Service and models for Readium LCP (soon public)                            |

## Why this name?

Iridium is named after the chemical element, which is known for being extremely corrosion-resistant: this reader will
stand the test of time 😎

# Iridium vs Readium

Developed in the continuity of Readium 2, Iridium could pave the way to a "unified reference implementation" for
Readium, with a unique codebase working across all platforms. However, Iridium is purely a Mantano initiative, and does
not reflect any official Readium move towards Dart/Flutter development.

The Readium SDK is funded by public grants and membership fees. Iridium is completely funded and developed by Mantano,
which is a private company. As a consequence:

- You can support this work by [becoming a sponsor](https://github.com/sponsors/Mantano);
- One of the sponsorship tiers gives full access to Iridium's optimized "navigator" component.

## Migrating an existing R2-based platform-specific app

Since the purpose is to allow full multiplatform development, these modules aim at being integrated into Dart/Flutter
apps. Some of them could probably be [integrated into existing apps](https://flutter.dev/docs/development/add-to-app).

However, *packing multiple Flutter libraries into an application isn’t supported by Flutter for now*. Integrating
multiple modules could be achieved by developing some kind of "super-module", but this has not been tested.

## Modules

* [mno_shared_dart](https://github.com/Mantano/mno_shared_dart) – Shared Publication models and utilities
* [mno_streamer_dart](https://github.com/Mantano/mno_streamer_dart) – Publication parsers
* [mno_server_dart](https://github.com/Mantano/mno_server_dart) – Local HTTP server
* [mno_navigator_flutter](https://github.com/Mantano/mno_navigator_flutter) – Navigator
* [mno_opds_dart](https://github.com/Mantano/mno_opds_dart) – Parsers for OPDS catalog feeds
* [mno_commons_dart](https://github.com/Mantano/mno_commons_dart) – Other misc. utilities (specific to this Flutter
  port, not found in Readium)
* [mno_lcp_dart](https://github.com/Mantano/mno_lcp_dart) – Service and models for Readium LCP (soon public)
* [iridium_demo](https://github.com/Mantano/iridium-demo) – Iridium SDK demo app

-----------
<a name="readium_foundation">1</a>: Readium is a trademark of the [Readium Foundation](https://readium.org/))
