# Change Log

## [v2.3.1](https://github.com/icinga/puppet-icinga/tree/v2.3.1) (2021-06-21)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.3.0...v2.3.1)

**Fixed bugs:**

- NETWAYS repos named the suffix -release by there packages [\#33](https://github.com/Icinga/puppet-icinga/issues/33)

## [v2.3.0](https://github.com/icinga/puppet-icinga/tree/v2.3.0) (2021-06-05)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.2.0...v2.3.0)

**Implemented enhancements:**

- Add parameter zone to agent and cert\_name to icinga class [\#28](https://github.com/Icinga/puppet-icinga/issues/28)
- Add support for Suse [\#25](https://github.com/Icinga/puppet-icinga/issues/25)

**Fixed bugs:**

- web\_api\_user has to manage only on config\_server's [\#30](https://github.com/Icinga/puppet-icinga/issues/30)
- Parameter api\_host of class web  should be also a list of Stdlib::Host [\#29](https://github.com/Icinga/puppet-icinga/issues/29)
- Option to switch off the package management on windows [\#27](https://github.com/Icinga/puppet-icinga/issues/27)

## [v2.2.0](https://github.com/icinga/puppet-icinga/tree/v2.2.0) (2021-05-19)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.1.4...v2.2.0)

**Implemented enhancements:**

- Add direct management of logging to server, worker and agent [\#23](https://github.com/Icinga/puppet-icinga/issues/23)
- Rework unit tests for class repos [\#19](https://github.com/Icinga/puppet-icinga/issues/19)
- Add management of extra packages [\#17](https://github.com/Icinga/puppet-icinga/issues/17)

## [v2.1.4](https://github.com/icinga/puppet-icinga/tree/v2.1.4) (2021-05-04)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.1.3...v2.1.4)

**Fixed bugs:**

- Broken dependency for yumrepos [\#22](https://github.com/Icinga/puppet-icinga/issues/22)

## [v2.1.3](https://github.com/icinga/puppet-icinga/tree/v2.1.3) (2021-05-04)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.1.2...v2.1.3)

**Fixed bugs:**

- Using wrong file names for repos plugins and extras [\#21](https://github.com/Icinga/puppet-icinga/issues/21)
- manage\_epel do not work [\#20](https://github.com/Icinga/puppet-icinga/issues/20)

## [v2.1.2](https://github.com/icinga/puppet-icinga/tree/v2.1.2) (2021-04-26)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.1.1...v2.1.2)

**Fixed bugs:**

- Setting config\_server manage a zones directory named zone [\#18](https://github.com/Icinga/puppet-icinga/issues/18)

## [v2.1.1](https://github.com/icinga/puppet-icinga/tree/v2.1.1) (2021-04-26)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.1.0...v2.1.1)

**Fixed bugs:**

- Setting manage for any repo does not work [\#16](https://github.com/Icinga/puppet-icinga/issues/16)

## [v2.1.0](https://github.com/icinga/puppet-icinga/tree/v2.1.0) (2021-04-24)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v2.0.0...v2.1.0)

**Implemented enhancements:**

- Add new class to manage Icinga Web 2 [\#15](https://github.com/Icinga/puppet-icinga/issues/15)
- Add new class to supports IDO [\#14](https://github.com/Icinga/puppet-icinga/issues/14)
- Add new classes for simple managing  [\#13](https://github.com/Icinga/puppet-icinga/issues/13)
- Add new repo packages.netways.de/plugins [\#12](https://github.com/Icinga/puppet-icinga/issues/12)
- Add new repo packages.netways.de/extras [\#11](https://github.com/Icinga/puppet-icinga/issues/11)

**Closed issues:**

- Fresh roll-out apt\_key dependency error [\#10](https://github.com/Icinga/puppet-icinga/issues/10)
- Duplicate declaration: Yumrepo\[epel\] is already declared [\#9](https://github.com/Icinga/puppet-icinga/issues/9)

## [v2.0.0](https://github.com/icinga/puppet-icinga/tree/v2.0.0) (2021-01-11)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v1.0.3...v2.0.0)

**Fixed bugs:**

- Change Management Behavoir for Repositories [\#6](https://github.com/Icinga/puppet-icinga/issues/6)

**Closed issues:**

- Add Dependency to puppet-redis [\#8](https://github.com/Icinga/puppet-icinga/issues/8)

## [v1.0.3](https://github.com/icinga/puppet-icinga/tree/v1.0.3) (2020-10-22)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v1.0.2...v1.0.3)

**Fixed bugs:**

- fix gpgkey for epel EL8 [\#5](https://github.com/Icinga/puppet-icinga/pull/5) ([lbetz](https://github.com/lbetz))

## [v1.0.2](https://github.com/icinga/puppet-icinga/tree/v1.0.2) (2020-10-13)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v0.1.2...v1.0.2)

**Implemented enhancements:**

- Remove repo management of SCL [\#2](https://github.com/Icinga/puppet-icinga/issues/2)
- Add a relase guide [\#1](https://github.com/Icinga/puppet-icinga/issues/1)

**Closed issues:**

- correct fixtures and metadata [\#4](https://github.com/Icinga/puppet-icinga/issues/4)

## [v0.1.2](https://github.com/icinga/puppet-icinga/tree/v0.1.2) (2020-04-21)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v0.1.1...v0.1.2)

## [v0.1.1](https://github.com/icinga/puppet-icinga/tree/v0.1.1) (2020-04-20)
[Full Changelog](https://github.com/icinga/puppet-icinga/compare/v0.1.0...v0.1.1)

## [v0.1.0](https://github.com/icinga/puppet-icinga/tree/v0.1.0) (2020-04-20)


\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*