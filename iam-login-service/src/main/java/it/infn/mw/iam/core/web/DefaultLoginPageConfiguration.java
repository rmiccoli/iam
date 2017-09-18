package it.infn.mw.iam.core.web;

import static it.infn.mw.iam.api.account_linking.AccountLinkingConstants.ACCOUNT_LINKING_DISABLE_PROPERTY;

import java.util.Arrays;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import it.infn.mw.iam.config.oidc.GoogleClientProperties;

@Component
public class DefaultLoginPageConfiguration implements LoginPageConfiguration, EnvironmentAware {

  private Environment env;

  private boolean googleEnabled;
  private boolean githubEnabled;
  private boolean samlEnabled;
  private boolean registrationEnabled;
  
  @Value(ACCOUNT_LINKING_DISABLE_PROPERTY)
  private Boolean accountLinkingDisable;

  @Autowired
  GoogleClientProperties googleClientConfiguration;

  
  @PostConstruct
  public void init() {

    googleEnabled = activeProfilesContains("google");
    githubEnabled = activeProfilesContains("github");
    samlEnabled = activeProfilesContains("saml");
    registrationEnabled = activeProfilesContains("registration");
  }

  private boolean activeProfilesContains(String val) {

    return Arrays.asList(env.getActiveProfiles()).contains(val);
  }

  @Override
  public boolean isGoogleEnabled() {

    return googleEnabled;
  }

  @Override
  public boolean isGithubEnabled() {

    return githubEnabled;
  }

  @Override
  public boolean isSamlEnabled() {

    return samlEnabled;
  }

  @Override
  public void setEnvironment(Environment environment) {

    this.env = environment;

  }

  @Override
  public boolean isRegistrationEnabled() {

    return registrationEnabled;
  }

  @Override
  public boolean isAccountLinkingEnabled() {
    return !accountLinkingDisable.booleanValue();
  }

}
