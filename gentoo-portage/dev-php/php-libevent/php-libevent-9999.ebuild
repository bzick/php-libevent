EAPI="2"
PHP_EXT_NAME="libevent"
PHP_EXT_INI="yes"
inherit php-ext-source-r2 confutils depend.php git-2

MY_PV="9999"
DESCRIPTION="Improved libevent PHP extension"
HOMEPAGE="https://github.com/bzick/php-libevent"
EGIT_REPO_URI="https://github.com/bzick/php-libevent.git"

LICENSE="PHP"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

# make test would just run php's test and as such need the full php source
RESTRICT="test"

DEPEND="dev-lang/php dev-libs/libevent"
RDEPEND="${DEPEND}"

#src_prepare() {
#}

src_configure() {
	my_conf="--with-libevent"
	php-ext-source-r2_src_configure
}

src_install() {
	php-ext-source-r2_src_install
}

pkg_postinst() {
	elog "php-libevent module has been successfully installed"
}
