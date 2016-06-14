package version

import (
	"github.com/Sirupsen/logrus"
	"github.com/spf13/viper"
)

type Version struct {
	VersionName string
}

func ReadVersion() Version {
	c := viper.New()
	c.SetDefault("version", "<dev>")
	c.AutomaticEnv()
	version_name := c.Get("version").(string)
	v := Version{}
	v.VersionName = version_name
	logrus.Infoln("Version: " + v.VersionName)
	return v
}
